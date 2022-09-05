const {validationResult} = require('express-validator');
const usersModel = require('../models/usersModel');
const emailRule = require('../modules/emailRules');
const authModule = require('../modules/authenticationModule');
const crypto = require('crypto');


// 暗号化につかうキー
const appKey = 'MY-SECRET-KEY';

// bcryptの設定
const bcrypt = require('bcrypt');
const { ResultWithContext } = require('express-validator/src/chain');
const saltRounds =10;

module.exports = {
  async createUser(req, res) {
    try {
      // バリデーション
      const errors = validationResult(req);
      if(!errors.isEmpty()) {
        console.log('###validationError###');
        // return res.status(422).json(errors.array());
        throw errors;
      }
      // DBにINSERT
      console.log('###controller###');
      console.log(`req.body.name = ${req.body.name}`);

      // DBに登録
      const result = await usersModel.insertUser(req, res);
      const userId = result.insertId; // insertした結果、user_idの番号
      // 本登録用URL作成
      const hash = crypto.createHash('sha1')
      .update(req.body.email)
      .digest('hex');
      const now = new Date();
      const expiration = now.setHours(now.getHours() + 1); // 1時間だけ有効
      let confirmUrl = req.get('host') + '/user/confirm/' + userId + '/' + hash + '?expires=' + expiration;
      const signature = crypto.createHmac('sha256', appKey)
      .update(confirmUrl)
      .digest('hex');
      confirmUrl += '&signature=' + signature;

      // メールを送信
      emailRule.sendConfirmMail(confirmUrl);
      console.log('###success on controller###');
      return res.json(result);

    } catch (error) {
      console.log('###error on controller###');
      // console.log(`res.test.apiError = ${res.test.apiError}`);
      return res.status(422).json(error);
    }
  },
  async confirmUser(req, res) {
    try {
      const userId = req.params.id;
      const selectResult = await usersModel.selectUserById(userId);
      if (!selectResult) {
        // return res.status(422).send('user_idが存在しません');
        throw new Error('user_idが存在しません');
      } else if (selectResult.isRegistration === 1) {
        // return res.status(422).send('既に登録されています');
        throw new Error('既に登録されています');
      } else {
        const now = new Date();
        const hash = crypto.createHash('sha1')
        .update(selectResult.email)
        .digest('hex');
        const isCorrectHash = (hash === req.params.hash);
        const isExpired = (now.getTime() > parseInt(req.query.expires));
        const confirmUrl =  req.get('host') + req.originalUrl.split('&signature=')[0];
        const signature = crypto.createHmac('sha256', appKey)
        .update(confirmUrl)
        .digest('hex');
        const isCorrectSignature = (signature === req.query.signature);
        if (!isCorrectHash || !isCorrectSignature || isExpired) {
          throw new Error('URLは有効期限切れか、正しくありません');
        } else {
          const updateResult = await usersModel.updateUser(userId);
          return res.send('本登録完了');
        }
      }
    } catch (error) {
      console.log(error);
      return res.status(422).send(error.message);
    }
  },
  async authenticateUser(req, res) {
    try {
      // バリデーション
      const errors = validationResult(req);
      if(!errors.isEmpty()) {
        console.log('###validationError###');
        return res.status(422).json(errors.array());
        // throw errors;
      }

      // DBからメールアドレスでユーザー情報を取得
      const user = await usersModel.selectUserByEmail(req.body.email);
      if(!user) throw new Error('メールアドレスが誤りです');

      // 取得したpassword(hash値)と入力したpasswordをcompare(比較)
      const match = await bcrypt.compare(req.body.password, user.password);
      if(!match) throw new Error('パスワードが一致しません');

      // 本登録してなければエラーを出す
      if(user.isRegistration === 0) throw new Error('登録が完了していません');

      // tokenを作成
      const token = authModule.generateAccessToken(user);

      // tokenをリターン
      res.json(token);
      console.log(`token = ${token}`);

    } catch (error) {
      res.status(401).json(error.message);
    }
  },
  async getUser(req,res) {
    const user = await usersModel.selectUserByEmail(req.user.email);
    if(!user) return res.status(404).json('ユーザーは存在しません');
    console.log('####getUser##');
    console.dir(user);
    res.json(user);
  },
  async getUserById(req,res) {
    console.log('getUserById Working');
    console.log(`req.qquery.userId= ${req.query.userId}`);
    const user = await usersModel.selectUserById(req.query.userId);
    if(!user) return res.status(404).json('ユーザーは存在しません');
    console.log('####getUser##');
    console.dir(user);
    res.json(user);
  },
  testMail(req, res) {
    try {
      console.log('testMail working');
      emailRule.sendTestMail();
      console.log('testMail well done');
      return res.json('testMail well done');
    } catch (error) {
      return res.json('testMail failed')
    }
  }
}

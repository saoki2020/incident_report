const {validationResult} = require('express-validator');
const usersModel = require('../models/usersModel');
const emailRule = require('../modules/emailRules');
const bcrypt = require('bcrypt');
const crypto = require('crypto');
const { ResultWithContext } = require('express-validator/src/chain');

const appKey = 'MY-SECRET-KEY';    // 暗号化につかうキー

module.exports = {
  async createUser(req, res) {
    // バリデーション
    const errors = validationResult(req);
    if(!errors.isEmpty()) {
      console.log('###validationError###');
      return res.json(errors.array());
    }

    // DBにINSERT
    try {
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
      return res.json(error);
    }
  },
  async confirmUser(req, res) {
    try {
      const userId = req.params.id;
      const selectResult = await usersModel.selectUser(userId);
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

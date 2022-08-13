const { check } = require('express-validator');

module.exports = [
  check('name').not().isEmpty().withMessage('名前は必須項目です'),
  check('email').not().isEmpty().withMessage('メールアドレスは必須項目です')
  .isEmail().withMessage('有効なメールアドレスを入力してください'),
  check('password').not().isEmpty().withMessage('パスワードは必須項目です')
  .isLength({min:7}).withMessage('パスワードは7文字以上必要です'),
  check('job').not().isEmpty().withMessage('職種は必須項目です'),
  check('department').not().isEmpty().withMessage('所属は必須項目です')
];

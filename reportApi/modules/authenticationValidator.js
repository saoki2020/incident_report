const { check } = require('express-validator');

module.exports = [
  check('email').not().isEmpty().withMessage('メールアドレスは必須項目です')
  .isEmail().withMessage('有効なメールアドレスを入力してください'),
  check('password').not().isEmpty().withMessage('パスワードは必須項目です')
  .isLength({min:7}).withMessage('パスワードは7文字以上必要です')
];

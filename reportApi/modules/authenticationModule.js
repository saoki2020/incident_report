const jwt = require('jsonwebtoken');

// 暗号化キー
const secretkey = 'secret_key';

module.exports = {
  generateAccessToken(user) {
    const payload = {
      id: user.user_id,
      email: user.email
    };
    return jwt.sign(payload, secretkey, {expiresIn: '1d'});
  },

  //tokenの有無、有効かどうかを調べ、ユーザ情報を渡す
  verifyToken(req, res, next) {
    const bearToken = req.headers.authorization;
    const bearer = bearToken.split(' ');
    const token = bearer[1];
    if (!token) return res.status(401).json('アクセストークンが含まれていません');
    jwt.verify(token, secretkey, (error, user) => {
      if (error) return res.status(401).json('アクセストークンが有効ではありません');
      req.user = user;
      next();
    })
  }

}

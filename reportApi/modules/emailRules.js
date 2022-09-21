const nodemailer = require('nodemailer');

// メールの設定
const transporter = nodemailer.createTransport({
  host: process.env.MAIL_HOST,
  port: process.env.MAIL_PORT,
  secure: process.env.MAIL_SECURE,
  auth: {
    user: process.env.MAIL_USER,
    pass: process.env.MAIL_PASS
  }
});

module.exports = {
  sendConfirmMail(confirmUrl, email) {
    // 本登録メールを送信
    transporter.sendMail({
      from: 'report_system@ennislover.com',
      to: email,
      text: "以下のURLをクリックして本登録を完了させてください。\n\n"+ confirmUrl,
      html: "以下のURLをクリックして本登録を完了させてください。\n\n"+ confirmUrl,
      subject: '本登録メール',
    }, (error, info) => {
      if(error) {
        console.log(error);
        return res.status(422).json(error);
      } else {
        console.log(info);
        return res.json(info);
      }
    });
  }
}

const nodemailer = require('nodemailer');

// メールの設定
const transporter = nodemailer.createTransport({
  // MailCatcherで送信テスト
  host: 'mailcatcher',
  port: 1025,
  secure: '',
  auth: {
    user: '',
    pass: ''
  }
});

module.exports = {
  sendConfirmMail(confirmUrl) {
    // 本登録メールを送信
    transporter.sendMail({
      from: 'from@example.com',
      to: 'to@example.com',
      text: "以下のURLをクリックして本登録を完了させてください。\n\n"+ confirmUrl,
      html: "以下のURLをクリックして本登録を完了させてください。\n\n"+ confirmUrl,
      subject: '本登録メール',
    });
  }
}

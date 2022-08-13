const nodemailer = require('nodemailer');

// メールの設定
const transporter = nodemailer.createTransport({
  // Gmailで送る設定
  // host: process.env.MAIL_HOST,
  // port: process.env.MAIL_PORT,
  // secure: process.env.MAIL_SECURE,
  // auth: {
  //   user: process.env.MAIL_USER,
  //   pass: process.env.MAIL_PASS
  // }

  // MailCatcherで送る設定
  host: 'mailcatcher',
  port: 1025,
  secure: '',
  auth: {
    user: '',
    pass: ''
  }
});

const data = {
  from: 'from@example.com',
  to: 'to@ecample.com',
  text: "テキストメール本文\nテキストメール本文\nテキストメール本文",
  html: 'HTMLメール本文<br>HTMLメール本文<br>HTMLメール本文',
  subject: 'メール件名',
};

module.exports = {
  sendTestMail() {
    console.log('sendTestMail work');

    transporter.sendMail(data, (error, info) => {
      if(error) {
        console.log(error);
      } else {
        console.log(info);
      }
    })
  },
  sendConfirmMail(confirmUrl) {
    console.log('seneMail working');
    // 本登録メールを送信
    transporter.sendMail({
      from: 'from@example.com',
      to: 'to@example.com',
      text: "以下のURLをクリックして本登録を完了させてください。\n\n"+ confirmUrl,
      html: "以下のURLをクリックして本登録を完了させてください。\n\n"+ confirmUrl,
      subject: '本登録メール',
    });
    console.log('###mail sended');
  }

}

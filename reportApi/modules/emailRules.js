const nodemailer = require('nodemailer');
const aws = require('aws-sdk');

const ses = new aws.SES({
  region: "ap-northeast-1"
});

// メールの設定
const transporter = nodemailer.createTransport({
  SES: { ses, aws }
});

module.exports = {
  sendConfirmMail(confirmUrl, email) {
    // 本登録メールを送信
    transporter.sendMail({
      from: 'report_system@iloveennis.link',
      to: email,
      text: "以下のURLをクリックして本登録を完了させてください。\n\n"+ "https://" + confirmUrl,
      subject: '本登録メール',
    }, (error, info) => {
      if(error) {
        console.log(error);
        return error;
        // return res.status(422).json(error);
      } else {
        console.log(info);
        return info;
        // return res.json(info);
      }
    });
  }
}

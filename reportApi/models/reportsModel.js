// DBの接続設定
const mysql = require('mysql2');
const connection = mysql.createConnection({
  host: 'db',
  user: 'root',
  password: 'root',
  database: 'report_db'
});


module.exports = {
  // DBにレポート情報を保存する
  async insertReport (req, res) {
    console.log('insertReport working')
    const experience = Number(req.body.postData.workYear) * 12 + Number(req.body.postData.workMonth);
    console.log(`experience = ${experience}`);
    const incidentDatetime = req.body.postData.incidentDate + ' ' + req.body.postData.incidentTime;
    console.log(`incidentDatetime =${incidentDatetime}`);
    const reportDatetime = req.body.postData.reportDate + ' ' + req.body.postData.reportTime;
    console.log(`reportDatetime=${reportDatetime}`);
    const sql = "INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    const params = [
      req.body.postUser.user_id,
      experience,
      req.body.postData.patientName,
      req.body.postData.patientAge,
      req.body.postData.patientGender,
      req.body.postData.department,
      req.body.postData.disease,
      req.body.postData.hospitalDate,
      req.body.postData.doctor,
      incidentDatetime,
      req.body.postData.selectedScene,
      req.body.postData.selectedContent,
      req.body.postData.selectedDetail,
      req.body.postData.selectedMistake,
      reportDatetime,
      req.body.postData.selectedDest,
      req.body.postData.selectedRisk,
      req.body.postData.loseTrust,
      req.body.postData.incidentSituation,
      req.body.postData.incidentResponse,
      req.body.postData.incidentFactor,
      req.body.postData.incidentPrevention
    ];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('####error on InsertReport##');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on InsertReport##');
        console.log(`result = ${result}`);
        resolve(result);
      })
    });
  },
}

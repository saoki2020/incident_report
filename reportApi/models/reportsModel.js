// DBの接続設定
const mysql = require('mysql2');
const connection = mysql.createConnection({
  host: 'db',
  user: 'root',
  password: 'root',
  database: 'report_db',
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
  async selectNoCommentReport (req, res) {
    console.log('selectNoCommentReport working')
    const sql = 'select report_no, a.user_id, b.name, c.job_name, d.dept_name, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment from REPORT a inner join USER b on a.user_id = b.user_id inner join MST_JOB c on b.job_id = c.job_id inner join MST_DEPARTMENT d on b.dept_id = d.dept_id where comment is NULL';
    return new Promise((resolve, reject) => {
      connection.query(sql, (error, result) => {
        if (error) {
          console.log('###error on selectNoCommentREPORT###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectNoCommentREPORT##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async selectCommentedReport (req, res) {
    console.log('selectCommentedReport working')
    const sql = 'select report_no, a.user_id, b.name, c.job_name, d.dept_name, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment from REPORT a inner join USER b on a.user_id = b.user_id inner join MST_JOB c on b.job_id = c.job_id inner join MST_DEPARTMENT d on b.dept_id = d.dept_id where comment is not NULL';
    return new Promise((resolve, reject) => {
      connection.query(sql, (error, result) => {
        if (error) {
          console.log('###error on selectCommentedREPORT###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectCommentedREPORT##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async selectReportById (req, res) {
    console.log('selectReportById working');
    console.dir(req.query);
    console.log(`req.params.userId = ${req.query.userId}`);
    const sql = 'select * from REPORT where user_id = ? or comment is not NULL';
    const params = [req.query.userId];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectREPORT###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectREPORT##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async updateComment(req, res) {
    console.log('updateComment working');
    const sql = "update REPORT set comment = ? where report_no = ?";
    const params = [req.body.commentData.comment, req.body.commentData.reportNo];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('####error on InsertComment##');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on InserComment##');
        console.log(`result = ${result}`);
        resolve(result);
      })
    });
  },
  async deleteReport(req, res) {
    const sql = "delete from REPORT where report_no = ?";
    const params = [req.body.reportNo];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          reject(error);
          return;
        }
        resolve(result);
      })
    });
  },
  async updateReport(req, res) {
    console.log('updateReport working');
    console.log(`req.body.editData.itemName = ${req.body.editData.itemName}`)
    const sql = "update REPORT set ?? = ? where report_no = ?";
    const params = [req.body.editData.itemName, req.body.editData.itemValue, req.body.editData.reportNo];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('####Edit Report Error##');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##Edit Report Success##');
        for(const key in result) {
          console.log(`${key}: ${result[key]}`)
        }
        resolve(result);
      })
    });
  },
  async selectCountScene(req, res) {
    console.log('selectCountScene working')
    const sql = `
    with
    params as (select ? as select_year)
    select A.scene,
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_SCENE as A, params as P)
    left join REPORT as B
    on A.scene_id = B.scene_id
    group by A.scene_id
    union all
    select '合計',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_SCENE as A, params as P)
    left join REPORT as B
    on A.scene_id = B.scene_id;
      `;
    const params = [req.query.selectedYear]
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectCountScene###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectCountScene##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async selectCountContent(req, res) {
    console.log('selectCountContent working')
    const sql = `
    with
    params as (select ? as select_year)
    select A.content,
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_CONTENT as A, params as P)
    left join REPORT as B
    on A.content_id = B.content_id
    group by A.content_id
    union all
    select '合計',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_CONTENT as A, params as P)
    left join REPORT as B
    on A.content_id = B.content_id;
      `;
    const params = [req.query.selectedYear]
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectCountContent###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectCountContent##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async selectCountDetail(req, res) {
    console.log('selectCountDetail working')
    const sql = `
    with
    params as (select ? as select_year)
    select A.detail,
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_DETAIL as A, params as P)
    left join REPORT as B
    on A.detail_id = B.detail_id
    group by A.detail_id
    union all
    select '合計',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_DETAIL as A, params as P)
    left join REPORT as B
    on A.detail_id = B.detail_id;
      `;
    const params = [req.query.selectedYear]
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectCountDetail###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectCountDetail##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async selectCountMistake(req, res) {
    console.log('selectCountMistake working')
    const sql = `
    with
    params as (select ? as select_year)
    select A.mistake,
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_MISTAKE as A, params as P)
    left join REPORT as B
    on A.mistake_id = B.mistake_id
    group by A.mistake_id
    union all
    select '合計',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_MISTAKE as A, params as P)
    left join REPORT as B
    on A.mistake_id = B.mistake_id;
      `;
    const params = [req.query.selectedYear]
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectCountMistake###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectCountMistake##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async selectCountReport(req, res) {
    console.log('selectCountReport working')
    const sql = `
    select
    count(case when month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from REPORT
    where year(report_datetime) = ?;
      `;
    const params = [req.query.selectedYear]
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectCountReport###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectCountReport##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
  async selectCountDept(req, res) {
    console.log('selectCountDept working')
    const sql = `
    with
    params as (select ? as select_year)
    select D.dept_name,
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
    count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
    from (MST_DEPARTMENT as D, params as P)
    left join USER as U
    on D.dept_id = U.dept_id
    left join REPORT as R
    on U.user_id = R.user_id
    group by D.dept_name;
      `;
    const params = [req.query.selectedYear]
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectCountDept###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectCountDept##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result);
      })
    })
  },
}

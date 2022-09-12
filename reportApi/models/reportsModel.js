// DBの接続設定
const mysql = require('mysql2');
const connection = mysql.createConnection({
  host: 'db_container',
  user: 'root',
  password: 'root',
  database: 'report_db',
});

module.exports = {
  // レポートを保存
  async insertReport (req, res) {
    // 経験年数を月数に変換し、経験月数と加算する
    const experience = Number(req.body.postData.workYear) * 12 + Number(req.body.postData.workMonth);
    // DateとTimeを結合し、Datetime型に変換する
    const incidentDatetime = req.body.postData.incidentDate + ' ' + req.body.postData.incidentTime;
    const reportDatetime = req.body.postData.reportDate + ' ' + req.body.postData.reportTime;
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
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // コメントのないレポートを取得
  async selectNoCommentReport (req, res) {
    const sql = 'select report_no, a.user_id, b.name, c.job_name, d.dept_name, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment from REPORT a inner join USER b on a.user_id = b.user_id inner join MST_JOB c on b.job_id = c.job_id inner join MST_DEPARTMENT d on b.dept_id = d.dept_id where comment is NULL';
    return new Promise((resolve, reject) => {
      connection.query(sql, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // コメント済みのレポートを取得
  async selectCommentedReport (req, res) {
    const sql = 'select report_no, a.user_id, b.name, c.job_name, d.dept_name, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment from REPORT a inner join USER b on a.user_id = b.user_id inner join MST_JOB c on b.job_id = c.job_id inner join MST_DEPARTMENT d on b.dept_id = d.dept_id where comment is not NULL';
    return new Promise((resolve, reject) => {
      connection.query(sql, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // user_idを指定してレポートを取得
  async selectReportById (req, res) {
    const sql = 'select * from REPORT where user_id = ? or comment is not NULL';
    const params = [req.query.userId];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // コメントを更新
  async updateComment(req, res) {
    const sql = "update REPORT set comment = ? where report_no = ?";
    const params = [req.body.commentData.comment, req.body.commentData.reportNo];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // レポートを削除
  async deleteReport(req, res) {
    const sql = "delete from REPORT where report_no = ?";
    const params = [req.body.reportNo];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // レポートを更新
  async updateReport(req, res) {
    const sql = "update REPORT set ?? = ? where report_no = ?";
    const params = [req.body.editData.itemName, req.body.editData.itemValue, req.body.editData.reportNo];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // 発生場所ごとの毎月の件数を取得
  async selectCountScene(req, res) {
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
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // 内容ごとの毎月の件数を取得
  async selectCountContent(req, res) {
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
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // 詳細ごとの毎月の件数を取得
  async selectCountDetail(req, res) {
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
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // 誤内容ごとの毎月の件数を取得
  async selectCountMistake(req, res) {
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
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // 月ごとの総件数を取得
  async selectCountReport(req, res) {
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
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // 部署ごとの毎月の件数を取得
  async selectCountDept(req, res) {
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
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
}

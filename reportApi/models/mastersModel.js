// DBの接続設定
const mysql = require('mysql2');
const connection = mysql.createConnection({
  host: 'db_container',
  user: 'root',
  password: 'root',
  database: 'report_db',
});

module.exports = {
  // MST_JOBのデータを取得する
    selectJobs(req, res) {
      const sql = 'SELECT * FROM MST_JOB';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_JOB');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  // MST_DEPARTMENTのデータを取得する
    selectDepartments(req, res) {
      const sql = 'SELECT * FROM MST_DEPARTMENT';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_DEPARTMENT');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  // MST_SCENEのデータを取得する
    selectScenes(req, res) {
      const sql = 'SELECT * FROM MST_SCENE';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_SCENE');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  // MST_CONTENTのデータを取得する
    selectContents(req, res) {
      const sql = 'SELECT * FROM MST_CONTENT';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_CONTENT');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  // MST_DETAILのデータを取得する
    selectDetails(req, res) {
      const sql = 'SELECT * FROM MST_DETAIL';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_DETAIL');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  // MST_MISTAKEのデータを取得する
    selectMistakes(req, res) {
      const sql = 'SELECT * FROM MST_MISTAKE';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_MISTAKE');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  // MST_DESTのデータを取得する
    selectDests(req, res) {
      const sql = 'SELECT * FROM MST_DEST';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_DEST');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  // MST_CLINICAL_DEPTのデータを取得する
    selectClinicalDepts(req, res) {
      const sql = 'SELECT * FROM MST_CLINICAL_DEPT';
      return new Promise(resolve => {
        connection.query(sql, (error, value) => {
          if (error) throw new Error('failed SELECT MST_CLINICAL_DEPT');
          if (!value) throw new Error('value does not exists');
          res.json(value);
          resolve();
        });
      });
    },
  }

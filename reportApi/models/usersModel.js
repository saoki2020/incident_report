// DBの接続設定
const mysql = require('mysql2');
const connection = mysql.createConnection({
  host: 'db_container',
  user: 'root',
  password: 'root',
  database: 'report_db',
});

// bcryptの設定
const bcrypt = require('bcrypt');
const saltRounds =10;

module.exports = {
  // DBにユーザ情報を保存する
  async insertUser (req, res) {
    const sql = "INSERT INTO USER (name, email, password, job_id, dept_id, isChief) VALUES (?,?,?,?,?,?)";
    const hash = await bcrypt.hash(req.body.password, saltRounds);
    const params = [req.body.name, req.body.email, hash, req.body.job, req.body.department, req.body.isChief];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
  // user_idからユーザー情報を取得
  async selectUserById (userId) {
    const sql = 'select * from USER where user_id = ?';
    const params = [userId];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result[0]);
      })
    });
  },
  // emailからユーザー情報を取得
  async selectUserByEmail (email) {
    const sql = 'select * from USER where email = ?';
    const params = [email];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result[0]);
      })
    });
  },
  // ユーザーを登録済みに変更
  updateUser (userId) {
    const sql = 'UPDATE USER SET isRegistration = 1 WHERE user_id = ?';
    const params = [userId];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) return reject(error);
        return resolve(result);
      })
    });
  },
}

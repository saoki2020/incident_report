// DBの接続設定
const mysql = require('mysql2');
const connection = mysql.createConnection({
  host: 'db',
  user: 'root',
  password: 'root',
  database: 'report_db'
});

// bcryptの設定
const bcrypt = require('bcrypt');
const saltRounds =10;

module.exports = {
  // DBにユーザ情報を保存する
  async insertUser (req, res) {
    console.log('###model###');
    console.log(`req.body.name = ${req.body.name}`);
    const sql = "INSERT INTO USER (name, email, password, job_id, dept_id, isChief) VALUES (?,?,?,?,?,?)";
    const hash = await bcrypt.hash(req.body.password, saltRounds);
    const params = [req.body.name, req.body.email, hash, req.body.job, req.body.department, req.body.isChief];
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('####error on model##');
          // res.test = {apiError: error};
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on model##');
        console.log(`result = ${result}`);
        resolve(result);
        // res.test = {apiResult: result};
        // console.log(`result = ${result}`);
        // console.log(`res.test.apiResult = ${res.test.apiResult}`);
      })
    });
  },
  async selectUserById (userId) {
    console.log('selectUser working')
    const sql = 'select * from USER where user_id = ?';
    const params = [userId];
    console.log(`params = ${params}`);
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectUser###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectUser##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result[0]);
      })
    })
  },
  async selectUserByEmail (email) {
    console.log('selectUserByEmail working')
    const sql = 'select * from USER where email = ?';
    const params = [email];
    console.log(`params = ${params}`);
    return new Promise((resolve, reject) => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on selectUser###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on selectUser##');
        console.log(`result[0] = ${result[0]}`);
        console.log(`result = ${result}`);
        console.dir(result);
        resolve(result[0]);
      })
    })
  },
  updateUser (userId) {
    const sql = 'UPDATE USER SET isRegistration = 1 WHERE user_id = ?';
    const params = [userId];
    return new Promise(resolve => {
      connection.query(sql, params, (error, result) => {
        if (error) {
          console.log('###error on updatetUser###');
          console.log(typeof(error));
          for(const key in error) {
            console.log(`${key}: ${error[key]}`)
          }
          reject(error);
          return;
        }
        console.log('##success on updateUser##');
        resolve(result);
      })
    })
  },
}

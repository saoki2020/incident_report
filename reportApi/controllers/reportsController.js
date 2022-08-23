const { insertReport } = require('../models/reportsModel');
const reportsModel = require('../models/reportsModel');

module.exports = {
  async createReport(req, res) {
    try {
      console.log("###createReport###");
      console.log(`req.body.postData = ${req.body.postData}`);
      console.dir(req.body.postData);
      console.log(`req.body.postUser = ${req.body.postUser}`);
      console.dir(req.body.postUser);
      const response = await insertReport(req, res);
      return res.json(response);
    } catch (error) {
      console.log("###createReport ERROR###");
      return res.status(422).json(error);
    }
  }
}

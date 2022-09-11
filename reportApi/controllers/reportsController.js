const reportsModel = require('../models/reportsModel');

module.exports = {
  async createReport(req, res) {
    try {
      console.log("###createReport###");
      console.log(`req.body.postData = ${req.body.postData}`);
      console.dir(req.body.postData);
      console.log(`req.body.postUser = ${req.body.postUser}`);
      console.dir(req.body.postUser);
      const response = await reportsModel.insertReport(req, res);
      return res.json(response);
    } catch (error) {
      console.log("###createReport ERROR###");
      return res.status(422).json(error);
    }
  },
  async getNoCommentReport(req, res) {
    // commentが未登録のレポートにUSER,JOB,DEPTを結合してから取得する
    try {
      console.log("###getNoCommentReport###");
      const reports = await reportsModel.selectNoCommentReport(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getReport ERROR###");
      return res.status(422).json(error);
    }
  },
  async getCommentedReport(req, res) {
    // commentが登録済みのレポートにUSER,JOB,DEPTを結合してから取得する
    try {
      console.log("###getCommentedReport###");
      const reports = await reportsModel.selectCommentedReport(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getCommentedReport ERROR###");
      return res.status(422).json(error);
    }
  },
  async getReport(req, res) {
    console.log(`req.params.userId = ${req.params.userId}`);
    console.dir(req.params);
    console.log(`req.query.userId = ${req.query.userId}`);
    console.dir(req.query);
    // ユーザーIDが一致したもの＆コメント済みのレポートをselect
    try {
      console.log("###getReport with ID ###");
      const reports = await reportsModel.selectReportById(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getReport ERROR###");
      return res.status(422).json(error);
    }
  },
  async postComment(req, res) {
    try {
      console.log('controller postComment working')
      console.log(`req.body.commentData.comment = ${req.body.commentData.comment}`);
      console.log(`req.body.commentData.reportNo = ${req.body.commentData.reportNo}`);
      const response = await reportsModel.updateComment(req, res);
      return res.json(response);
    } catch (error) {
      console.log("###postComment ERROR###");
      return res.status(422).json(error);
    }
  },
  async deleteReport(req, res) {
    try {
      const response = await reportsModel.deleteReport(req, res);
      return res.json(response);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  async editReport(req, res) {
    try {
      console.log('controller editReport working')
      console.log(`req.body.editData.itemName = ${req.body.editData.itemName}`);
      console.log(`req.body.editData.itemValue = ${req.body.editData.itemValue}`);
      const response = await reportsModel.updateReport(req, res);
      return res.json(response);
    } catch (error) {
      console.log("###postComment ERROR###");
      return res.status(422).json(error);
    }
  },
  async getCountScene(req, res) {
    try {
      console.log("###getCountScene###");
      const reports = await reportsModel.selectCountScene(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getCountScene ERROR###");
      return res.status(422).json(error);
    }
  },
  async getCountContent(req, res) {
    try {
      console.log("###getCountContent###");
      const reports = await reportsModel.selectCountContent(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getCountContent ERROR###");
      return res.status(422).json(error);
    }
  },
  async getCountDetail(req, res) {
    try {
      console.log("###getCountDetail###");
      const reports = await reportsModel.selectCountDetail(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getCountDetail ERROR###");
      return res.status(422).json(error);
    }
  },
  async getCountMistake(req, res) {
    try {
      console.log("###getCountMistake###");
      const reports = await reportsModel.selectCountMistake(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getCountMistake ERROR###");
      return res.status(422).json(error);
    }
  },
  async getCountReport(req, res) {
    try {
      console.log("###getCountReport###");
      const reports = await reportsModel.selectCountReport(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getCountReport ERROR###");
      return res.status(422).json(error);
    }
  },
  async getCountDept(req, res) {
    try {
      console.log("###getCountDept###");
      const reports = await reportsModel.selectCountDept(req, res);
      return res.json(reports);
    } catch (error) {
      console.log("###getCountDept ERROR###");
      return res.status(422).json(error);
    }
  },
}

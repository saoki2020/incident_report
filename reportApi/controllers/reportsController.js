const reportsModel = require('../models/reportsModel');

module.exports = {
  // レポートを登録
  async createReport(req, res) {
    try {
      const response = await reportsModel.insertReport(req, res);
      return res.json(response);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // commentが未登録のレポートにUSER,JOB,DEPTを結合してから取得
  async getNoCommentReport(req, res) {
    try {
      const reports = await reportsModel.selectNoCommentReport(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // commentが登録済みのレポートにUSER,JOB,DEPTを結合してから取得
  async getCommentedReport(req, res) {
    try {
      const reports = await reportsModel.selectCommentedReport(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // ユーザーIDが一致したもの＆コメント済みのレポートを取得
  async getReport(req, res) {
    try {
      const reports = await reportsModel.selectReportById(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // コメントを登録
  async postComment(req, res) {
    try {
      const response = await reportsModel.updateComment(req, res);
      return res.json(response);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // レポートを削除
  async deleteReport(req, res) {
    try {
      const response = await reportsModel.deleteReport(req, res);
      return res.json(response);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // レポートを編集
  async editReport(req, res) {
    try {
      const response = await reportsModel.updateReport(req, res);
      return res.json(response);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // 発生場所ごとの件数を取得
  async getCountScene(req, res) {
    try {
      const reports = await reportsModel.selectCountScene(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // 内容ごとの件数を取得
  async getCountContent(req, res) {
    try {
      const reports = await reportsModel.selectCountContent(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // 詳細毎の件数を取得
  async getCountDetail(req, res) {
    try {
      const reports = await reportsModel.selectCountDetail(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // 誤内容ごとの件数を取得
  async getCountMistake(req, res) {
    try {
      const reports = await reportsModel.selectCountMistake(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // 毎月の総件数を取得
  async getCountReport(req, res) {
    try {
      const reports = await reportsModel.selectCountReport(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
  // 部署ごとの件数を取得
  async getCountDept(req, res) {
    try {
      const reports = await reportsModel.selectCountDept(req, res);
      return res.json(reports);
    } catch (error) {
      return res.status(422).json(error);
    }
  },
}

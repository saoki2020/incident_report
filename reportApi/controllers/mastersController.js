const mastersModel = require('../models/mastersModel');

module.exports = {
  getJobs(req, res) {
    mastersModel.selectJobs(req, res);
  },
  getDepartments(req, res) {
    mastersModel.selectDepartments(req, res);
  },
  getScenes(req, res) {
    mastersModel.selectScenes(req, res);
  },
  getContents(req, res) {
    mastersModel.selectContents(req, res);
  },
  getDetails(req, res) {
    mastersModel.selectDetails(req, res);
  },
  getMistakes(req, res) {
    mastersModel.selectMistakes(req, res);
  },
  getDests(req, res) {
    mastersModel.selectDests(req, res);
  },
  getClinicalDepts(req, res) {
    mastersModel.selectClinicalDepts(req, res);
  },
}

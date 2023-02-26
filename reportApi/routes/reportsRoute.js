const express = require('express');
const router = express.Router();
const reportsController = require('../controllers/reportsController');

module.exports = [
  router.post('/report/postNewReport', reportsController.createReport),
  router.get('/report/chief', reportsController.getNoCommentReport),
  router.get('/report', reportsController.getReport),
  router.get('/report/commented', reportsController.getCommentedReport),
  router.post('/report/postComment', reportsController.postComment),
  router.post('/report/delete', reportsController.deleteReport),
  router.post('/report/edit', reportsController.editReport),
  router.get('/report/countReport', reportsController.getCountReport),
  router.get('/report/countScene', reportsController.getCountScene),
  router.get('/report/countContent', reportsController.getCountContent),
  router.get('/report/countDetail', reportsController.getCountDetail),
  router.get('/report/countMistake', reportsController.getCountMistake),
  router.get('/report/countDept', reportsController.getCountDept),
]

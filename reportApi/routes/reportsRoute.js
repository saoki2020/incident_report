const express = require('express');
const router = express.Router();
const reportsController = require('../controllers/reportsController');

module.exports = [
  router.post('/report/postNewReport', reportsController.createReport),

]

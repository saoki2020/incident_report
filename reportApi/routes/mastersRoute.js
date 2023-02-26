const express = require('express');
const router = express.Router();
const mastersController = require('../controllers/mastersController');

module.exports = [
  router.get('/masters/jobs', mastersController.getJobs),
  router.get('/masters/departments', mastersController.getDepartments),
  router.get('/masters/scenes', mastersController.getScenes),
  router.get('/masters/contents', mastersController.getContents),
  router.get('/masters/details', mastersController.getDetails),
  router.get('/masters/mistakes', mastersController.getMistakes),
  router.get('/masters/dests', mastersController.getDests),
  router.get('/masters/clinicalDepts', mastersController.getClinicalDepts),
]

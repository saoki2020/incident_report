const express = require('express');
const router = express.Router();
const usersController = require('../controllers/usersController');
const registrationValidator = require('../modules/registrationValidator');

module.exports = [
  router.post('/user/registration',registrationValidator, usersController.createUser),
  router.get('/user/confirm/:id/:hash', usersController.confirmUser),
  router.get('/mail', usersController.testMail)

]

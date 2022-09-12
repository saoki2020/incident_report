const express = require('express');
const router = express.Router();
const usersController = require('../controllers/usersController');
const registrationValidator = require('../modules/registrationValidator');
const authenticationValidator = require('../modules/authenticationValidator');
const {verifyToken} = require('../modules/authenticationModule')

module.exports = [
  router.post('/user/registration',registrationValidator, usersController.createUser),
  router.get('/user/confirm/:id/:hash', usersController.confirmUser),
  router.post('/user/authentication', authenticationValidator, usersController.authenticateUser),
  router.get('/user',verifyToken, usersController.getUser),
  router.get('/user/reporter', usersController.getUserById),
]

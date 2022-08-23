const express = require('express');
const router = express.Router();
const masterRoute = require('./mastersRoute');
const usersRoute = require('./usersRoute')
const reportRoute = require('./reportsRoute')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

module.exports = [router, masterRoute, usersRoute, reportRoute];

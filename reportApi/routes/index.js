const express = require('express');
const router = express.Router();
const masterRoute = require('./mastersRoute');
const usersRoute = require('./usersRoute')
const reportRoute = require('./reportsRoute')

module.exports = [router, masterRoute, usersRoute, reportRoute];

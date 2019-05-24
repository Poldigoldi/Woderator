var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var workoutController = require('../Controller/workout');
var dbController = require('../Controller/database');
var exercise;


/* GET home page. */
router.get('/', workoutController.home);

router.get('/workout/:MuscleGroup/:Duration/:Type', dbController.getWorkout);
router.post('/workout/submit', dbController.submitWorkout);

module.exports = router;

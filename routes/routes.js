var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var workoutController = require('../Controller/workout');
var dbController = require('../Controller/database');

router.get('/', workoutController.home);
router.post('/workout/submit', dbController.submitWorkout);
router.get('/workout/:MuscleGroup/:Duration/:Type', dbController.getWorkout);
router.post('/favourites', dbController.saveFavourite);
router.get('/favourites', dbController.getFavourites);
router.delete('/favourites/remove/:favouriteID', dbController.removeFavourite);


module.exports = router;

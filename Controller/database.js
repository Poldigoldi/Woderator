const mysql = require('mysql');
const uuidv1 = require('uuid/v1');

let con = mysql.createConnection({
	host: "localhost",
	user: "student",
	database: "Workouts"
});

shuffle = function(array) {
	let currentIndex = array.length, temporaryValue, randomIndex;
	while (0 !== currentIndex) {
		randomIndex = Math.floor(Math.random() * currentIndex);
		currentIndex -= 1;
		temporaryValue = array[currentIndex];
		array[currentIndex] = array[randomIndex];
		array[randomIndex] = temporaryValue;
	}
	return array;
};


module.exports = { 
	async createConnection() {
		try {
			await con.connect();
			console.log("Connected");
		} catch {
			console.log("ERROR: Could not connect to database");
		}
	},

	async getWorkout(req, res) {
		try {
			const sql = 'SELECT * FROM Workouts WHERE muscleGroup = ? AND type = ?';
			con.query(sql, [req.params.MuscleGroup, req.params.Type], await function (err, result) {
				let workout = [];
				let workoutDuration = 0;
				const desiredDuration = req.params.Duration;
				result = shuffle(result);  //randomise workout

				//Builds up workout cards for desired duration
				for (let i = result.length - 1; i >= 0; i--) {
					workoutDuration = workoutDuration + result[i].duration;
					if (workoutDuration <= desiredDuration) {
						workout.push(result[i]);
					}
				}
				res.render('workout', { MuscleGroup: req.params.MuscleGroup, Duration: req.params.Duration, EXERCISE: workout });
			});
		} catch {
			res.status(400).json({
				"message": "ERROR! getWorkout: could not get workout."
			});
		}
	},

	async submitWorkout(req, res) {
		try {
			const MuscleGroup = await req.body.MuscleGroup;
			const Duration = await req.body.Duration;
			const Type = await req.body.Type;
			await res.redirect('/workout/' + MuscleGroup + '/' + Duration + '/' + Type);
		} catch {
			res.status(400).json({
				"message": "ERROR! submitWorkout: could not submit request."
			});
		}
	},
	

	async saveFavourite(req, res) {
		try {
			let faveID = uuidv1();
			let exerciseIDs = req.body.exerciseIDs;

			exerciseIDs.forEach(exerciseID => {
				const sql2 = 'INSERT INTO Favourites (favouriteID, exerciseID) VALUES (?,?)';
				con.query(sql2, [faveID, exerciseID]);
			});
			res.status(201).json({
				"message": "SUCCESS"
			});
		} catch {
			res.status(400).json({
				"message": "ERROR! saveFavourite: Could not insert into database."
			});
		}  
	},

	async getFavourites(req, res) {
		try {
			sql = 'SELECT Favourites.favouriteID, Favourites.createdAt, Workouts.exercise, Workouts.reps, Workouts.sets, Workouts.video FROM Favourites JOIN Workouts ON Favourites.exerciseID = Workouts.id ORDER BY Favourites.favouriteID;';
			con.query(sql, await function (err, result) {
				let favourites = [];
				result.forEach((item, index) => {
					let existingIndex;
					if (favourites.length === 0) {
						favourites.push({
							favouriteID: item.favouriteID,
							createdAt: item.createdAt,
							exercises: [
							{
								exercise: item.exercise,
								reps: item.reps,
								sets: item.sets,
								video: item.video
							}
							],
						});
					} else {
						for (let i=0; i < favourites.length; i++) {
							if (favourites[i].favouriteID === item.favouriteID) {
								existingIndex = i;
							} 
						}
						if (existingIndex !== undefined) {
							favourites[existingIndex].exercises.push(
							{
								exercise: item.exercise,
								reps: item.reps,
								sets: item.sets,
								video: item.video
							}
							);
						}
						else {
							favourites.push({
								favouriteID: item.favouriteID,
								createdAt: item.createdAt,
								exercises: [
								{
									exercise: item.exercise,
									reps: item.reps,
									sets: item.sets,
									video: item.video
								}
								],
							});
						}
					}
				});
				console.log(favourites);
				res.render('favourites', { FAVOURITES: favourites });
			});
		} catch {
			res.status(400).json({
				"message": "ERROR! getFavourites: Could not get favourites."
			});
		}  
	}
};
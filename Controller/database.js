var mysql = require('mysql');

const con = mysql.createConnection({
		  	host: "localhost",
		  	user: "student",
		  	database: "Workouts"
		});



module.exports = { 
	async createConnection() {
		try {
			await con.connect();
			console.log("Connected!");
		} catch {
			console.log("connect ERROR: could not connect to database!");
		}
	},

	async getWorkout(req, res) {
		try {
			var sql = 'SELECT * FROM Workouts WHERE muscleGroup = ? AND type = ?';
			con.query(sql, [req.params.MuscleGroup, req.params.Type], await function (err, result) {
		    	res.render('workout', { MuscleGroup: req.params.MuscleGroup, Duration: req.params.Duration, EXERCISE: result });
	  		});
		} catch {
			console.log("getWorkout ERROR: cannot execute query!")
		}
	},

	async submitWorkout(req, res) {
		try {
			var MuscleGroup = await req.body.MuscleGroup;
			var Duration = await req.body.Muration;
			var Type = await req.body.Type;
	  		await res.redirect('/workout/' + MuscleGroup + '/' + Duration + '/' + Type);
		} catch {
			console.log("submitWorkout ERROR: cannot submit workout")
		}
	}

};
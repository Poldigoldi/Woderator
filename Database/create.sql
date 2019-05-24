DROP TABLE IF EXISTS Workouts;

CREATE TABLE Workouts (
  id INTEGER PRIMARY KEY AUTO_INCREMENT
  , muscleGroup VARCHAR(100) NOT NULL
  , bodyPart VARCHAR(100) NOT NULL
  , exercise VARCHAR(100) NULL
  , reps INTEGER
  , sets INTEGER 
  , type VARCHAR(100) NOT NULL
  , duration INTEGER NOT NULL
);


INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Upper", "Bicep", "Curls", 10, 4, "Strength", 10);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Upper", "Bicep", "Pull ups", 5, 5, "Strength", 10);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Upper", "Tricep", "Dips", 15, 3, "Calisthenics", 10);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Upper", "Tricep", "Extensions", 12, 3, "Strength", 8);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Upper", "Chest", "Bench Press", 4, 5, "Strength", 12);

INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Mid", "Abs", "Crunch", 20, 5, "Calisthenics", 7);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Mid", "Core", "Plank", 40, 5, "Calisthenics", 5);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Mid", "Core", "Side Plank", 40, 5, "Calisthenics", 5);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Mid", "Core", "Leg Extension", 15, 3, "Calisthenics", 3);

INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Lower", "Legs", "Back Squat", 6, 5, "Strength", 15);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Lower", "Legs", "Front Squat", 6, 5,  "Strength", 15);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Lower", "Quads", "Leg Extension", 10, 3, "Strength", 8);
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration) VALUES ("Lower", "Calves", "Raises", 15, 3, "Strength", 5);



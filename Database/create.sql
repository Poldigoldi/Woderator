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
  , video TEXT
);


INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Upper", "Bicep", "Curls", 10, 4, "Strength", 10, "https://www.youtube.com/embed/uO_CNYidOw0");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Upper", "Bicep", "Pull ups", 5, 5, "Strength", 10, "https://www.youtube.com/embed/yLXn2OtQmxo");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Upper", "Tricep", "Dips", 15, 3, "Calisthenics", 10, "https://www.youtube.com/embed/0326dy_-CzM");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Upper", "Tricep", "Extensions", 12, 3, "Strength", 8, "https://www.youtube.com/embed/nRiJVZDpdL0");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Upper", "Chest", "Bench Press", 4, 5, "Strength", 12, "https://www.youtube.com/embed/gRVjAtPip0Y");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Upper", "Chest/Tricep", "Push up", 20, 5, "Aerobic", 10, "https://www.youtube.com/embed/_l3ySVKYVJ8");


INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Mid", "Abs", "Crunch", 20, 5, "Calisthenics", 7, "https://www.youtube.com/embed/Xyd_fa5zoEU");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Mid", "Core", "Plank", 40, 5, "Calisthenics", 5, "https://www.youtube.com/embed/DHvSGdCIZyQ");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Mid", "Core", "Side Plank", 40, 5, "Calisthenics", 5, "https://www.youtube.com/embed/K2VljzCC16g");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Mid", "Core", "Leg Raises", 15, 3, "Calisthenics", 3, "https://www.youtube.com/embed/JB2oyawG9KI");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Mid", "Core", "Hollow Rocks", 20, 3, "Strength", 4, "https://www.youtube.com/embed/p7j02V1fIzU");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Mid", "Core", "Superman Rocks", 20, 3, "Strength", 4, "https://www.youtube.com/embed/IJ6uTLPA-d4");


INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Lower", "Legs", "Back Squat", 6, 5, "Strength", 15, "https://www.youtube.com/embed/Dy28eq2PjcM");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Lower", "Legs", "Front Squat", 6, 5,  "Strength", 15, "https://www.youtube.com/embed/VfBOBhwXbro");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Lower", "Quads", "Leg Extension", 10, 3, "Strength", 8, "https://www.youtube.com/embed/YyvSfVjQeL0");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Lower", "Calves", "Raises", 15, 3, "Strength", 5, "https://www.youtube.com/embed/-M4-G8p8fmc");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Lower", "Legs", "Single Leg Squat", 10, 3, "Calisthenics", 7, "https://www.youtube.com/embed/7NvOuty_Fnc");


INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Full", "All", "Star Jumps", 30, 3, "Calisthenics", 5, "https://www.youtube.com/embed/h6wu4_LOhyU");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Full", "Abs/Shoulders", "Mountain Climbers", 40, 3, "Calisthenics", 5, "https://www.youtube.com/embed/nmwgirgXLYM");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Full", "Legs", "Squat Jumps", 30, 3, "Calisthenics", 5, "https://www.youtube.com/embed/U4s4mEQ5VqU");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Full", "All", "Spinning", 1, 1, "Aerobic", 45, "https://www.youtube.com/embed/AiDD_aqdnK0");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Full", "Chest/Tricep", "Push up", 20, 5, "Aerobic", 10, "https://www.youtube.com/embed/_l3ySVKYVJ8");
INSERT INTO Workouts (muscleGroup, bodyPart, exercise, reps, sets, type, duration, video) VALUES ("Full", "All", "Stationary Sprint", 30, 3, "Aerobic", 3, "https://www.youtube.com/embed/iYDY-d7UhgE");






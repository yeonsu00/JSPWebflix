CREATE TABLE IF NOT EXISTS movie (
    movie_id VARCHAR(10) NOT NULL,
    name VARCHAR(20),
    genre VARCHAR(20),
    description TEXT,
    director VARCHAR(10),
    grade VARCHAR(10),
    runningTime VARCHAR(10),
    fileName VARCHAR(100)
    )default CHARSET=utf8;

desc movie;
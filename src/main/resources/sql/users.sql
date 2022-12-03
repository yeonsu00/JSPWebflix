CREATE TABLE IF NOT EXISTS users(
    id VARCHAR(10) NOT NULL,
    name VARCHAR(20),
    user_id VARCHAR(20),
    user_password VARCHAR(20),
    PRIMARY KEY (id)
)default CHARSET=utf8;

desc users;
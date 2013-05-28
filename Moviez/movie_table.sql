
CREATE TABLE moviez
(
id SERIAL8 PRIMARY KEY,
title VARCHAR(50) NOT NULL UNIQUE,
year INT4,
rated VARCHAR(5),
released DATE CHECK (released < '5/27/2013'),
runtime VARCHAR(15),
genre TEXT,
director VARCHAR(50) NOT NULL UNIQUE,
writer VARCHAR(50) NOT NULL UNIQUE,
actors TEXT,
plot TEXT,
poster TEXT
);
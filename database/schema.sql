CREATE DATABASE IF NOT EXISTS CCCS105;
USE CCCS105;

CREATE TABLE groups (
    group_id INT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(100) NOT NULL,
    debut_year YEAR,
    agency VARCHAR(100),
    members_count INT
);

CREATE TABLE idols (
    idol_id INT AUTO_INCREMENT PRIMARY KEY,
    stage_name VARCHAR(100) NOT NULL,
    real_name VARCHAR(100),
    birthdate DATE,
    nationality VARCHAR(50),
    position VARCHAR(100),
    instagram VARCHAR(100),
    group_id INT,

    FOREIGN KEY (group_id)
    REFERENCES groups(group_id)
);

CREATE TABLE albums (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(100) NOT NULL,
    release_date DATE,
    album_type VARCHAR(50),
    total_tracks INT,
    group_id INT,

    FOREIGN KEY (group_id)
    REFERENCES groups(group_id)
);

CREATE TABLE songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(100) NOT NULL,
    duration TIME,
    genre VARCHAR(50),
    track_number INT,
    album_id INT,

    FOREIGN KEY (album_id)
    REFERENCES albums(album_id)
);
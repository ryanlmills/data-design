DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile (
    profileId BINARY(16) NOT NULL,
    profileActivationToken CHAR(32) NOT NULL,
    profileEmail VARCHAR(128) NOT NULL,
    profileUsername VARCHAR(32) NOT NULL
    UNIQUE (profileAtHandle)
    PRIMARY KEY (profileId)
);

CREATE TABLE film (
    filmId
)
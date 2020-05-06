DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile (
    profileId BINARY(16) NOT NULL,
    profileActivationToken CHAR(32),
    profileEmail VARCHAR(128) NOT NULL,
    profileHandle VARCHAR(32) NOT NULL,
    UNIQUE(profileHandle),
    UNIQUE(profileEmail),
    PRIMARY KEY (profileId)
);

CREATE TABLE film (
    filmId BINARY(16) NOT NULL,
    filmName VARCHAR(256) NOT NULL,
    filmCover VARCHAR(255),
    PRIMARY KEY (filmId)
);

CREATE TABLE review (
    reviewFilmId BINARY(16) NOT NULL,
    reviewProfileId BINARY(16) NOT NULL,
    reviewDate DATETIME(6) NOT NULL,
    reviewText VARCHAR(1024) NOT NULL,
    reviewRatingValue DECIMAL(2,1) NOT NULL,
    index(reviewProfileId),
    index(reviewFilmId),
    FOREIGN KEY (reviewProfileId) REFERENCES profile(profileId),
    FOREIGN KEY (reviewFilmId) REFERENCES film(filmId),
    PRIMARY KEY (reviewFilmId, reviewProfileId)
);
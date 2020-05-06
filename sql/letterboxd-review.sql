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
    filmCover VARBINARY(MAX),
    PRIMARY KEY (filmId)
);

CREATE TABLE review (
    reviewId BINARY(16) NOT NULL,
    reviewValueId BINARY(16) NOT NULL,
    reviewDate DATETIME(6) NOT NULL,
    reviewText VARCHAR(MAX) NOT NULL,
    reviewRatingValue DECIMAL(2,1) NOT NULL,
    index(reviewRatingValue),
    FOREIGN KEY (reviewValueId) REFERENCES profile(profileId),
    PRIMARY KEY (reviewId)
);
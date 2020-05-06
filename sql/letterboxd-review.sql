DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile (
    profileId BINARY(16) NOT NULL,
    profileActivationToken CHAR(32) NOT NULL,
    profileEmail VARCHAR(128) NOT NULL,
    profileUsername VARCHAR(32) NOT NULL
    UNIQUE(profileUsername),
    PRIMARY KEY (profileId)
);

CREATE TABLE film (
    filmId BINARY(16) NOT NULL,
    filmName VARCHAR(256) NOT NULL,
    filmCover VARBINARY(MAX)
    PRIMARY KEY (filmId)
);

CREATE TABLE review (
    reviewId BINARY(16) NOT NULL,
    reviewValueId BINARY(16) NOT NULL,
    reviewDate DATETIME(6) NOT NULL,
    reviewText VARCHAR(MAX) NOT NULL,
    reviewRatingValue DECIMAL(2,1) NOT NULL,
    FOREIGN KEY (reviewValueId) REFERENCES profile(profileId),
    PRIMARY KEY (reviewId)
);
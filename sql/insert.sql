INSERT INTO profile(profileId, profileActivationToken, profileEmail, profileHandle) VALUES (UNHEX("68d500ac30794110a45e4b8d59121278"), "veryuniquetoken", "email@aol.com", "StellarPoster");

INSERT INTO profile(profileId, profileActivationToken, profileEmail, profileHandle) VALUES (UNHEX("78d500ac30794110a45e4b8d59121278"), "superuniquetoken", "email@gmail.com", "FantasticPoster");

INSERT INTO profile(profileId, profileActivationToken, profileEmail, profileHandle) VALUES (UNHEX("88d500ac30794110a45e4b8d59121278"), "extremelyuniquetoken", "email@hotmail.com", "FecklessPoster");

INSERT INTO film(filmId, filmName, filmCover) VALUES (UNHEX("0b6f9ef38c5b4e13adc19cb575163216"), "The Red Tent", "theRedTentCover");

INSERT INTO review(reviewFilmId, reviewProfileId, reviewDate, reviewText, reviewRatingValue) VALUES (UNHEX("0b6f9ef38c5b4e13adc19cb575163216"), UNHEX("68d500ac30794110a45e4b8d59121278"), "2020-05-05 17:51:04", "Pretty good", "3.5");
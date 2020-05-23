SELECT profileId, profileActivationToken, profileEmail, profileHandle FROM profile WHERE profileId = (UNHEX("68d500ac30794110a45e4b8d59121278"));

SELECT profile.profileId, review.reviewProfileId FROM profile INNER JOIN review on review.reviewProfileId = profile.profileId WHERE reviewProfileId = (UNHEX("68d500ac30794110a45e4b8d59121278"));

SELECT likeProfileId, likeTweetId, likeDate FROM like WHERE tweetId = UNHEX('98d500ac30794110a45e4b8d59121278');
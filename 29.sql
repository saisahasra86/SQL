-- Get the number of users who possitively engaged with at least one video of Disney Channel (channel_id = 352).

SELECT
  count(DISTINCT USER_LIKES.user_id) AS no_of_users_reached
FROM
  video
  INNER JOIN USER_LIKES ON USER_LIKES.video_id = video.video_id
WHERE
  video.channel_id = 352
  AND USER_LIKES.reaction_type LIKE "LIKE";
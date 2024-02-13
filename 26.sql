
-- Get the total number of countries where the subscribers of the Taylor Swift channel (channel_id = 399) are present.
SELECT
  COUNT(DISTINCT country) AS country_count
FROM
  user
  LEFT JOIN channel_user ON user.user_id = channel_user.user_id
WHERE
  channel_user.channel_id = 399
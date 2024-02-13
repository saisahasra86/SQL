-- Insights about users:
-- Get the geographic distribution of Taylor Swift channel (channel_id = 399) subscribers.

SELECT
  user.country,
  count(country) AS no_of_subscribers
FROM
  user
  INNER JOIN channel_user
WHERE
  channel_user.channel_id = 399
GROUP BY
  country
ORDER BY
  country;
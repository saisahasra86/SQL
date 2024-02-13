
-- Get all the recent movie trailers that have more than 1 lakh views.
SELECT
  name,
  channel_id,
  no_of_views,
  published_datetime
FROM
  video
WHERE
  name LIKE "%trailer%"
  AND no_of_views > 100000
ORDER BY
  no_of_views DESC,
  published_datetime DESC;
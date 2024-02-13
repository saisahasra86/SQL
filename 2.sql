-- Get videos from TEDx channel (id=353) with more than 50 thousand views.
SELECT
  video_id,
  name,
  duration_in_secs,
  no_of_views
FROM
  video
WHERE
  channel_id = 353
  AND no_of_views > 50000
ORDER BY
  no_of_views DESC,
  name;
  
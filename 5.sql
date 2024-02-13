-- Get all the videos that are released in the year 2018. 
SELECT
  video_id,
  name,
  duration_in_secs,
  no_of_views
FROM
  video
WHERE
  strftime("%Y", published_datetime) = '2018'
ORDER BY
  published_datetime DESC,
  name;
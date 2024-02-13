
-- Find the number of videos published between the years 2010 & 2016.
SELECT
  cast(strftime("%Y", published_datetime) AS int) AS year,
  count(*) AS no_of_videos
FROM
  video
WHERE
  CAST(strftime("%Y", published_datetime) AS int) BETWEEN 2010
  AND 2016
GROUP BY
  year;
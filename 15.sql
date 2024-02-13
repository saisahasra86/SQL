-- Get all the music videos released before the year 2016.
SELECT
  name,
  no_of_views,
  CAST(strftime("%Y", published_datetime) AS INT) AS year
FROM
  video
WHERE
  name LIKE "%music%"
  AND strftime("%Y", published_datetime) < "2016"
ORDER BY
  year DESC,
  name ASC;
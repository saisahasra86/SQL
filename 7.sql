-- Get all the esport videos that crossed one lakh views and were released between 2018 and 2020.
SELECT
  name,
  published_datetime,
  no_of_views
FROM
  video
WHERE
  CAST(strftime("%Y", published_datetime) AS INT) BETWEEN 2018
  AND 2020
  AND name LIKE "%esport%"
  AND no_of_views > 100000
ORDER BY
  no_of_views DESC,
  published_datetime DESC;
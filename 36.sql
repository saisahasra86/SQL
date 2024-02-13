-- Get all the videos that have more than the average number of views.

SELECT
  name,
  no_of_views
FROM
  video
WHERE
  no_of_views > (
    SELECT
      avg(no_of_views)
    FROM
      video
  )
ORDER BY
  name ASC;
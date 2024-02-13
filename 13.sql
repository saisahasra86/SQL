-- Fetch the top 10 videos having more number of views.
SELECT
  name,
  no_of_views
FROM
  video
ORDER BY
  no_of_views DESC,
  name ASC
LIMIT
  10;
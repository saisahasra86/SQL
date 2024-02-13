
-- Get all the review videos, i.e., videos which contain "review" in their name.
SELECT
  name,
  no_of_views
FROM
  video
WHERE
  name LIKE "%review%"
ORDER BY
  no_of_views DESC;
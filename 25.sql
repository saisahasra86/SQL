
-- Get the total number of countries where the users of the platform are present.
SELECT
  count(DISTINCT country) AS country_count
FROM
  user
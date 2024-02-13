-- Get the number of male and female premium users in the platform.
SELECT
  gender,
  COUNT(gender) AS total_users
FROM
  USER
GROUP BY
  gender;
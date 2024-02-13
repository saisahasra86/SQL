-- Get the active users of the platform. Consider the users who liked at least fifty videos are considered active users.

SELECT
  user_id AS active_user_id,
  COUNT(user_likes.user_id) AS no_of_likes
FROM
  user_likes
WHERE
  user_likes.reaction_type LIKE "LIKE"
GROUP BY
  user_id
HAVING
  no_of_likes >= 50
ORDER BY
  user_id ASC
-- Get all the Indian users details whose age is below 30 years and liked the video (video_id = 1011) in the year 2020.
SELECT
  name,
  gender,
  age,
  country,
  premium_membership
FROM
  user
WHERE
  user.age < 30
  AND user.country = 'INDIA'
  AND user_id IN (
    SELECT
      user_id
    FROM
      user_likes
    WHERE
      reaction_type = "LIKE"
      AND video_id = 1011
      AND CAST(strftime("%Y", reacted_at) AS INT) = 2020
  )
ORDER BY
  user.name ASC;
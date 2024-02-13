-- Best time to upload a comedy video:

-- DunkFest channel is planning to upload a video in the "COMEDY" genre
-- Give the channel the best suitable hour of the day when users positively engage more with comedy videos.

SELECT
  CAST(strftime("%H", user_likes.reacted_at) AS INT) AS hour_of_engagement,
  COUNT(user_likes.user_id) AS no_of_likes
FROM
  user_likes
  INNER JOIN video_genre ON video_genre.video_id = user_likes.video_id
WHERE
  user_likes.reaction_type = "LIKE"
  AND video_genre.genre_id IN (
    SELECT
      genre_id
    FROM
      genre
    WHERE
      genre_type LIKE "COMEDY"
  )
GROUP BY
  user_likes.video_id
ORDER BY
  no_of_likes DESC
LIMIT
  1
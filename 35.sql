
-- How many times each user has engaged with the videos of "News for you" channel (id = 366).

SELECT
  user_likes.user_id,
  count(reaction_type) AS no_of_reactions
FROM
  video
  INNER JOIN user_likes ON video.video_id = user_likes.video_id
WHERE
  video.channel_id = 366
GROUP BY
  user_likes.user_id
ORDER BY
  no_of_reactions DESC,
  user_likes.user_id ASC;
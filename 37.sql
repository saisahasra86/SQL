-- Get all the distinct user_ids who liked at least one video uploaded by Android Authority Channel (channel__id = 364) but didn't like the video uploaded by Tech savvy channel with video_id = 1005.

SELECT
  DISTINCT user_id
FROM
  user
WHERE
  user_id IN (
    SELECT
      DISTINCT user_likes.user_id
    FROM
      user_likes
      INNER JOIN video ON video.video_id = user_likes.video_id
    WHERE
      video.channel_id = 364
      AND user_likes.reaction_type = "LIKE"
  )
  AND user_id NOT IN (
    SELECT
      DISTINCT user_id
    FROM
      user_likes
    WHERE
      video_id = 1005
      AND user_likes.reaction_type = "LIKE"
  )
ORDER BY
  user_id
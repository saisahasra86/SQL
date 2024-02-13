
-- Fetch the top 10 videos having more number of views, along with the channel details.
SELECT
  video.name AS video_name,
  video.no_of_views,
  channel.name AS channel_name
FROM
  video
  INNER JOIN channel ON channel.channel_id = video.channel_id
ORDER BY
  video.no_of_views DESC,
  channel_name ASC
LIMIT
  10
-- Get all the channels that published at least 5 videos in the year 2018.

SELECT
  channel.channel_id,
  channel.name AS channel_name,
  count(video.video_id) AS no_of_videos
FROM
  channel
  LEFT JOIN video ON channel.channel_id = video.channel_id
WHERE
  strftime("%Y", video.published_datetime) = '2018'
GROUP BY
  channel.channel_id
HAVING
  no_of_videos >= 5
ORDER BY
  channel.channel_id ASC
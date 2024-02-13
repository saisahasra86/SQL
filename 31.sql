-- Get the number of videos uploaded by the "News for you" channel in the year in 2018.
SELECT
  count(DISTINCT video.video_id) AS no_of_videos
FROM
  video
  INNER JOIN channel ON channel.channel_id = video.channel_id
WHERE
  channel.name = "News for you"
  AND strftime("%Y", video.published_datetime) = '2018';
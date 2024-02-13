-- Get all the unique channels that published review videos.
SELECT
  channel.channel_id,
  channel.name AS channel_name
FROM
  channel
  INNER JOIN video ON video.channel_id = channel.channel_id
WHERE
  video.name LIKE "%review%"
GROUP BY
  channel.channel_id
ORDER BY
  channel_name

-- Get all distinct channels which published music videos before 2016.
SELECT
  channel.channel_id AS channel_id,
  channel.name AS channel_name
FROM
  channel
  LEFT JOIN video
WHERE
  video.name LIKE "%music%"
  AND strftime("%Y", video.published_datetime) < "2016"
GROUP BY
  channel.channel_id
ORDER BY
  channel_name ASC;
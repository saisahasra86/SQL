
-- Get the number of subscribers for each channel.

SELECT
  channel.channel_id,
  channel.name AS channel_name,
  count(channel_user.subscribed_datetime) AS no_of_subscribers
FROM
  channel
  LEFT JOIN channel_user ON channel_user.channel_id = channel.channel_id
GROUP BY
  channel.channel_id
ORDER BY
  no_of_subscribers DESC,
  channel_name ASC;
-- Get the top 10 channels for which more number of users are subscribed in the year 2018.

SELECT
  channel.channel_id,
  channel.name AS channel_name,
  count(channel_user.channel_id) AS no_of_subscribers
FROM
  channel
  INNER JOIN channel_user ON channel_user.channel_id = channel.channel_id
WHERE
  strftime("%Y", channel_user.subscribed_datetime) = '2018'
GROUP BY
  channel.channel_id
ORDER BY
  no_of_subscribers DESC,
  channel_name ASC
LIMIT
  10;
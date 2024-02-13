-- Get the total number of users subscribed for the channel "Tyler Oakley" (channel_id = 376) in the year 2018.
SELECT
  count(user_id) AS no_of_subscribers
FROM
  channel_user SELF --   JOIN channel_user
WHERE
  strftime("%Y", subscribed_datetime) = '2018'
  AND channel_id = 376
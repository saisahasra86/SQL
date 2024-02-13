-- Get the number of users subscribed for the "Taylor Swift" channel in every month in the year 2018.
SELECT
  CAST(strftime("%m", subscribed_datetime) AS int) AS month_in_2018,
  count() AS subscribers_per_month
FROM
  channel_user
WHERE
  strftime("%Y", subscribed_datetime) = '2018'
  AND channel_id IN (
    SELECT
      channel_id
    FROM
      channel
    WHERE
      name = "Taylor Swift"
  )
GROUP BY
  month_in_2018
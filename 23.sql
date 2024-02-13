-- Get the total number of channels in the database.
SELECT
  count(DISTINCT channel_id) AS no_of_channels
FROM
  channel
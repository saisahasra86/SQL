-- Get the total number of channels in the database aschannels_count
SELECT
  COUNT(channel_id) AS channels_count
FROM
  CHANNEL
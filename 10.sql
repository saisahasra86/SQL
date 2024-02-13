-- Get the average number of views for the videos released by the "Single Shot" Channel (id = 373)
SELECT
  AVG(no_of_views) AS avg_views
FROM
  video
WHERE
  channel_id = 373;
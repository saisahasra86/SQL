
-- Get the highest and least number of views for the videos in the database.

SELECT
  MAX(no_of_views) AS highest_number_of_views,
  MIN(no_of_views) AS least_number_of_views
FROM
  video
  
-- Get all the videos that belong to "Action" genre (genre_id = 201) and have more than 1 lakh views.
SELECT
  video.video_id,
  video.name,
  video_genre.genre_id
FROM
  video
  LEFT JOIN video_genre ON video_genre.video_id = video.video_id
WHERE
  video_genre.genre_id = 201
  AND video.no_of_views > 100000
ORDER BY
  video.video_id
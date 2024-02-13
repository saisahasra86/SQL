-- Get to top 5 viewed videos which belong to both the genres "Action" (genre_id = 201 ) and "Comedy" (genre_id = 202).
SELECT
  name AS video_name,
  no_of_views
FROM
  video
WHERE
  video_id IN (
    SELECT
      video_genre.video_id
    FROM
      video_genre
    WHERE
      video_genre.genre_id = 201
  )
  AND video_id IN (
    SELECT
      video_genre.video_id
    FROM
      video_genre
    WHERE
      video_genre.genre_id = 202
  )
ORDER BY
  video.no_of_views DESC,
  video_name ASC
LIMIT
  5;
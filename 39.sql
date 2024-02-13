
-- Get the top 5 viewed videos that belong to the "GAMING" genre_type.
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
      video_genre.genre_id IN (
        SELECT
          genre_id
        FROM
          genre
        WHERE
          genre.genre_type LIKE "GAMING"
      )
  )
ORDER BY
  no_of_views DESC,
  video_name ASC
LIMIT
  5;
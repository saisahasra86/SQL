
-- Between 2010 & 2020, find the number of videos released in each of the below genres.
SELECT
  video_genre.genre_id,
  count(video_genre.genre_id) AS no_of_videos --   CAST(strftime("%Y", video.published_datetime) AS int) AS year
FROM
  video
  INNER JOIN video_genre ON video_genre.video_id = video.video_id
WHERE
  (
    CAST(strftime("%Y", video.published_datetime) AS int) BETWEEN 2010
    AND 2020
  )
  AND video_genre.genre_id IN (201, 202, 204, 205, 206, 207)
GROUP BY
  video_genre.genre_id
ORDER BY
  no_of_videos DESC,
  video_genre.genre_id ASC;

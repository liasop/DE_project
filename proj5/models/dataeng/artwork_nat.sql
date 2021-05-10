
/*
    This model counts the total number of artworks per nationality
*/


SELECT nationality, count(*) as count_artworks
FROM {{ ref('artist_join_artwork') }}
GROUP BY nationality ORDER BY count_artworks DESC

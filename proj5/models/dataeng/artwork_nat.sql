
/*
    This model count of artworks per nationality
*/


SELECT nationality, count(*) as count_artworks
FROM {{ ref('artist_join_artwork') }}
GROUP BY nationality

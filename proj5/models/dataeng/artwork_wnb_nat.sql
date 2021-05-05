
/*
    This model count of artworks per nationality for Women and Non-Binary Artists
*/


SELECT nationality, count(*) as count_artworks_wnb
FROM {{ ref('artwork_wnb') }}
GROUP BY nationality

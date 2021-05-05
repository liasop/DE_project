
/*
    This model counts the number of women and nb people by nationality.
*/


SELECT nationality, count(gender) as count_women_nb
FROM {{ ref('artist_wnb') }}
GROUP BY nationality

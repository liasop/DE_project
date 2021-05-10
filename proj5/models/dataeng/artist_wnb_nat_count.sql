
/*
    This model counts the number of women and non-binary people by nationality.
*/


SELECT nationality, count(*) as count_women_nb
FROM {{ ref('artist_wnb') }}
GROUP BY nationality ORDER BY count_women_nb DESC

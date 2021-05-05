
/*
    This model counts the number of artists (any gender) by nationality.
*/


SELECT nationality, count(gender) as count_total
FROM {{ source('moma','artists') }}
GROUP BY nationality

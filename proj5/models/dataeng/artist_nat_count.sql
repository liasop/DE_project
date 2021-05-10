
/*
    This model counts the number of the total artists per nationality.
*/


SELECT nationality, count(*) as count_total
FROM {{ source('moma','artists') }}
GROUP BY nationality

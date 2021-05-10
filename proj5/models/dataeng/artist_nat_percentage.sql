
/*
    This model calculates the percentage of women artists per nationality
    and orders them by percentage
*/


SELECT nationality, (CAST(count_women_nb as float) / CAST(count_total as float)) * 100 as percentage
FROM {{ ref('artist_nat_joined') }}
ORDER BY percentage DESC

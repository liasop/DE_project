
/*
    This model calculates the percentage of women artists per nationality
    and orders them by percentage
*/


SELECT nationality, (count_women_nb / count_total) as percentage
FROM {{ ref('artist_nat_joined') }}
ORDER BY percentage DESC


/*
    This model displays the percentage of women artists per nationality
    and orders them by percentage with a rank created with a window function
*/

SELECT nationality, percentage, ROW_NUMBER() OVER(
       ORDER BY percentage DESC) AS rank
FROM  {{ ref('artist_nat_percentage') }}
ORDER BY percentage DESC

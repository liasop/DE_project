
/*
    This model calculates the percentage of women artworks per nationality
    and orders them by percentage
*/


SELECT nationality, (count_artworks_wnb / count_artworks) as percentage
FROM {{ ref('artwork_nat_joined') }}
ORDER BY percentage DESC

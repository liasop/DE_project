
/*
    This model calculates the percentage of women artworks per nationality
    and orders them by percentage
*/


SELECT nationality, (CAST(count_artworks_wnb as float) / CAST(count_artworks as float)) as percentage
FROM {{ ref('artwork_nat_joined') }}
ORDER BY percentage DESC

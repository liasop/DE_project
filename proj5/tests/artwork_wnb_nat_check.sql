
/*
    Test for the artwork_wnb_nat model
*/

SELECT * from {{ ref('artwork_wnb_nat') }} WHERE count_artworks_wnb = 0.0 LIMIT 10

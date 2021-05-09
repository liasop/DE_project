
/*
    Test for the artwork_nat model
*/

SELECT * from {{ ref('artwork_nat') }} WHERE count_artworks = 0.0 LIMIT 10

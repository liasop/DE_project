
/*
    Test for the artwork_wnb_nat model
*/

SELECT * from {{ ref('artist_wnb_nat_count') }} WHERE count_women_nb = 0.0 LIMIT 10

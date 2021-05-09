
/*
    Test for the artwork_nat_percentage model
*/

SELECT * from {{ ref('artist_nat_percentage') }} WHERE percentage <= 0.0 LIMIT 10

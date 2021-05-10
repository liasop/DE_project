
/*
    Test for the artwork_nat_percentage model
*/

SELECT * from {{ ref('artist_nat_percentage') }} WHERE percentage > 100 LIMIT 10

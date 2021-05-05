
/*
    This model is the join of the total count of artwork and wnb count of artowkr
    by nationalty, joined on nationalty
*/


SELECT t1.nationality, count_artworks, count_artworks_wnb
FROM {{ ref('artwork_wnb_nat') }} as t1, {{ ref('artwork_nat') }} as t2
WHERE t1.nationality = t2.nationality

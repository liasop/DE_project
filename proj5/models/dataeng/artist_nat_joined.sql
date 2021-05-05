
/*
    This model is the join of the total count and wnb count
    by nationalty, joined on nationalty
*/


SELECT t1.nationality, count_total, count_women_nb
FROM {{ ref('artist_nat_count') }} as t1, {{ ref('artist_wnb_nat_count') }} as t2
WHERE t1.nationality = t2.nationality

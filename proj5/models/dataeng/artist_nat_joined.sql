
/*
    This model is a left join of the total count and wnb count
    by nationalty, joined on nationalty
*/


SELECT t1.nationality, count_total,
CASE
  WHEN count_women_nb IS NULL THEN 0
  ELSE count_women_nb
END AS count_women_nb
FROM {{ ref('artist_nat_count') }} as t1 LEFT JOIN {{ ref('artist_wnb_nat_count') }} as t2
ON t1.nationality = t2.nationality

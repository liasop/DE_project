
/*
    This model is the left join of the total count of artwork and women and non-binary artwork count
    by nationalty, joined on nationalty
*/
{{ config(materialized='incremental') }}


SELECT t1.nationality, count_artworks,
CASE
  WHEN count_artworks_wnb IS NULL THEN 0
  ELSE count_artworks_wnb
END AS count_artworks_wnb
FROM {{ ref('artwork_nat') }} as t1 LEFT JOIN {{ ref('artwork_wnb_nat') }} as t2
ON t1.nationality = t2.nationality

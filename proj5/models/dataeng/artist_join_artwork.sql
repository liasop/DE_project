
/*
    This model is the join of artwork and artists with
    relavant columns
*/


SELECT display_name as artist_name, t1.nationality, t1.gender, title
FROM {{ source('moma','artists') }} as t1, {{ source('moma','artworks') }} as t2
WHERE t1.constituent_id = t2.constituent_id

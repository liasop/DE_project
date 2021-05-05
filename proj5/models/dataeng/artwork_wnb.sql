
/*
    This model gets all artwork made by women and Non-Binary artists
*/


SELECT *
FROM {{ ref('artist_join_artwork') }}
WHERE gender = 'female' OR gender = 'Female' OR gender = 'Non-binary' OR gender = 'Non-Binary'


/*
    This model is a table of the join of artwork and artists with
    relavant columns. It includes an incremental table ,
    where it adds artworks or artists if there is a new one in the table based
    on a unique id for each table
*/
{{ config(materialized='incremental') }}

{% if is_incremental() %}

WITH max_const as (SELECT max(constituent_id) as max FROM {{ this }}),
max_id as (SELECT max(id) as max FROM {{ this }})

{% endif %}

SELECT t1.constituent_id as constituent_id, t2.id as id, display_name as artist_name, t1.nationality, t1.gender, title
FROM {{ source('moma','artists') }} as t1 INNER JOIN {{ source('moma','artworks') }} as t2
ON t1.constituent_id = t2.constituent_id

{% if is_incremental() %}

WHERE t1.constituent_id > (SELECT max FROM max_const)
OR t2.id > (SELECT max FROM max_id)

{% endif %}

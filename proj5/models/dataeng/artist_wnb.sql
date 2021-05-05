
/*
    This model selects relavant columns from aritst of
    artists who are female or non-binary.
*/


SELECT constituent_id, display_name, nationality, gender
FROM {{ source('moma','artists') }}
WHERE gender = 'female' OR gender = 'Female' OR gender = 'Non-binary' OR gender = 'Non-Binary'

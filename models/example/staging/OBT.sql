with source as (
    select * from {{ source('sorce_ods', 'DEPI_data') }}
)

select 
    CAST(ID AS INT) as employee_id,
    first_name,
    last_name,
    email,
    DOB as date_of_birth,
    TRY_CAST(REPLACE(REPLACE(salary, '$', ''), ',', '') AS FLOAT) as salary,
    department,
    country,
    gender
from source
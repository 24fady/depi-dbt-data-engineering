with source as (
    select * from {{ source('sorce_ods', 'DEPI_data') }}
)

select distinct
    gender
from source
where gender is not null
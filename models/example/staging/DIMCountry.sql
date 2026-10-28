with source as (
    select * from {{ source('sorce_ods', 'DEPI_data') }}
)

select distinct
    country as country_name
from source
where country is not null
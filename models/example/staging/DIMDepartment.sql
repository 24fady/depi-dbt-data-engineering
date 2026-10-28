with source as (
    select * from {{ source('sorce_ods', 'DEPI_data') }}
)

select distinct
    department as department_name
from source
where department is not null
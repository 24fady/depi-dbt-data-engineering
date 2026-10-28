with source as (
    select * from {{ source('sorce_ods', 'DEPI_data') }}
)

select distinct
    TRY_CAST(DOB AS DATE) as birth_date,
    YEAR(TRY_CAST(DOB AS DATE)) as birth_year,
    MONTH(TRY_CAST(DOB AS DATE)) as birth_month
from source
where DOB is not null
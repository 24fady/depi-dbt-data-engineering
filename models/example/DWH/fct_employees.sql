with source_data as (
    select * from {{ ref('OBT') }}
),

-- استدعاء المراجع هنا يجعل dbt يرسم أسهم العلاقات في الـ Lineage Graph
dim_country as (
    select * from {{ ref('dim_country') }}
),

dim_date as (
    select * from {{ ref('dim_date') }}
),

dim_department as (
    select * from {{ ref('dim_department') }}
),

dim_employee as (
    select * from {{ ref('dim_employee') }}
),

dim_gender as (
    select * from {{ ref('dim_gender') }}
)

select 
    employee_id,
    first_name,
    last_name,
    email,
    date_of_birth,
    salary,
    department,
    country,
    gender,
    case 
        when salary >= 7000 then 'High Salary'
        when salary >= 4000 then 'Medium Salary'
        else 'Low Salary'
    end as salary_tier
from source_data
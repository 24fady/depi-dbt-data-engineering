with source_data as (
    select * from {{ ref('OBT') }}
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
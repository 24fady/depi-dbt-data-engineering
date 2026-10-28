-- Test fails if any record has salary <= 0
select
    employee_id,
    salary
from {{ ref('DIMEmployee') }}
where salary <= 0
-- model employees
with calc_employess as (

    select
        date_part(year, current_date) - date_part(year, birth_date) as age,
        date_part(year, current_date) - date_part(year, hire_date) as lenghtofservice,
        first_name || ' ' || last_name as name,
        src_emp.*
    from {{source('sources','employees')}} as src_emp

)

select * from calc_employess

-- -- model employees
-- with calc_employess as (

-- select 
-- date_part(year,current_date) - date_part(year,birth_date) age,
-- date_part(year,current_date) - date_part(year,hire_date) lenghtofservice,
-- first_name + ' ' + last_name name, *
-- from {{source('sources','employees')}}
-- )
-- select * from calc_employess
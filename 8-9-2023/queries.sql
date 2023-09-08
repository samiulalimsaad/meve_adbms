-- 2. Find the names of all employee who work for “Sonali”.
select
    employee_name
from
    meve_works_0809
where
    company_name = 'Sonali'
    -- 3. Find the names, streets and cities residence of all employees who work for “Agrani”.
select
    employee_name,
    street,
    city
from
    meve_employee_0809
where
    employee_name in (
        select
            employee_name
        from
            meve_works_0809
        where
            company_name = 'Agrani'
    );

-- 4. Find the names, streets and cities residence of all employees who work for “Sonali” and earn more than 1,20,000 per annum.
select
    employee_name,
    street,
    city
from
    meve_employee_0809
where
    employee_name in (
        select
            employee_name
        from
            meve_works_0809
        where
            company_name = 'Sonali'
            and salary * 12 >= 120000
    );

-- 5. Find all employees in the database who live in the same cities as the companies for which they work.
select
    *
from
    meve_works_0809
where
    employee_name in (
        select
            employee_name
        from
            meve_employee_0809
        where
            city in (
                select
                    city
                from
                    meve_company_0809
            )
    )
    -- 6. Find all employees in the database who live in the same cities and on the same streets as do their managers.
    -- 7. Find all employees in the database who do not work for “Sonali” Bank.
    -- 8. Find all employees in the database who earn more than each employee of “Janata” Bank
    -- 9. Find all employees who earn more than the average salary of all employees of their companies.
    -- 10. Find the company that has the most employees.
    -- 11. Find the company that has the smallest payroll.
    -- 12. Find those companies whose employees earn a higher salary, on average, than the average salary at
    -- “Agrani” Bank.
    -- 13. Modify the database so that “Arif” now lives in Natore.
    -- 14. Give all employees of “Agrani” Bank 1 10 percent raise.
    -- 15. Give all managers of “Agrani” Bank a 10 percent salary raise.
    -- 16. Give all managers a 10 percent salary raise unless salary becomes greater than 19,000; in such cases, give
    -- only a 3 percent salary raise.
    -- 17. Delete all tuples in the works relation for employees of “Janata” Bank.
    -- 18. Define a view consisting of manager-name and average salary of all employees who work for that manager.
    -- Now try to modify that view.
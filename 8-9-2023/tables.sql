create table
    meve_employee_0809 (
        employee_name varchar(50),
        street varchar(50),
        city varchar(50),
        primary key (employee_name)
    )
create table
    meve_works_0809 (
        employee_name varchar(50),
        company_name varchar(50),
        salary numeric(10),
        primary key (employee_name)
    )
create table
    meve_company_0809 (
        company_name varchar(50),
        city varchar(50),
        primary key (company_name)
    )
create table
    meve_manages_0809 (
        employee_name varchar(50),
        manager_name varchar(50),
        primary key (employee_name)
    )
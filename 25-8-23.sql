CREATE TABLE
    meve_employee (
        employee_name varchar(50),
        street varchar(50),
        city varchar(50),
        primary key (employee_name)
    );


insert into meve_employee 
values('Arif', '51 Upashahar', 'Rajshahi');

insert into meve_employee 
values('Sumon', '52 East', 'Maynamoti');

insert into meve_employee 
values('Sagar', 'Neemgachi', 'Sirajgang');

insert into meve_employee 
values('Abdul', 'Binodpur', 'Rajshahi');

insert into meve_employee 
values('Himesh', 'Nazrun Avenue', 'Dahaka');

insert into meve_employee 
values('Amirul', 'Chawk Bazar', 'Sylhet');

insert into meve_employee 
values('Sajib', '99 North', 'Chittagong');

select * from meve_employee


CREATE TABLE
    meve_works (
        employee_name varchar(50),
        company varchar(50),
        salary numeric(10),
        primary key (employee_name),
        foreign key (employee_name) references meve_employee(employee_name)
    );

insert into meve_works 
values('Arif', 'Janata', 13000);

insert into meve_works 
values('Sumon', 'Aghrani', 12000);

insert into meve_works 
values('Sagar', 'Sonali', 8000);

insert into meve_works 
values('Abdul', 'Sonali', 13000);

insert into meve_works 
values('Himesh', 'Aghrani', 6000);

insert into meve_works 
values('Amirul', 'Sonali', 20000);

insert into meve_works 
values('Sajib', 'Janata', 9000);

-- b
select employee_name from meve_employee where city = 'Rajshahi'

-- c
select employee_name, street from meve_employee where city = 'Rajshahi'

-- d (i)
select employee_name from meve_works where company = 'Sonali'

-- d (ii)
select employee_name from meve_works where company = 'Aghrani'

-- d (iii)
select employee_name from meve_works where company = 'Janata'

-- e (i)
select employee_name, salary from meve_works where company = 'Sonali'

-- e (ii)
select employee_name, salary from meve_works where company = 'Aghrani'

-- e (iii)
select employee_name, salary from meve_works where company = 'Janata'

-- f(i)
select employee_name from meve_works where salary = 12000

-- f(ii)
select employee_name from meve_works where salary >= 12000

-- f(iii)
select employee_name from meve_works where salary < 12000

-- g(i)
select employee_name, company from meve_works where salary = 12000

-- g(ii)
select employee_name, company from meve_works where salary >= 12000

-- g(iii)
select employee_name, company from meve_works where salary < 12000

-- h
select employee_name, street, city from meve_employee natural join meve_works where company='Aghrani'

-- i
select employee_name, street, city from meve_employee natural join meve_works where salary>=10000

-- j
select employee_name, street, city from meve_employee natural join meve_works where city = 'Rajshahi'

-- k
select employee_name, company, city from meve_employee natural join meve_works where salary>=10000

-- l
select employee_name, street, city from meve_employee natural join meve_works where company='Sonali' and salary>=10000

-- m
select employee_name from  meve_works company != 'Sonali'

-- n
update meve_employee set city='Natore' where employee_name = 'Arif'

-- o
update meve_works set salary=salary * 1.1 where company = 'Aghrani'

-- o
delete from meve_works where employee_name = 'Sagar'
delete from meve_employee where employee_name = 'Sagar'


select * from meve_works;
select * from meve_employee;

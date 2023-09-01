CREATE TABLE
    meve_student (
        roll varchar(10),
        name varchar(50),
        dept_name varchar(50),
        year varchar(50),
        semester varchar(50),
        primary key (roll)
    );


insert into meve_student 
values('06543201', 'Rahim', 'BBA', '2nd', '1st');

insert into meve_student 
values('06543202', 'Karim', 'ICE', '2nd', '1st');

insert into meve_student 
values('06543203', 'Motin', 'CSE', '1st', '2nd');

insert into meve_student 
values('06543206', 'Swadhin', 'CSE', '1st', '2nd');

insert into meve_student 
values('06543207', 'Hena', 'BBA', '4th', '2ndt');

insert into meve_student 
values('06543208', 'Sohag', 'CSE', '3rd', '1st');

select * from meve_student


select name from meve_student where semester = '1st'
select name from meve_student where year = '2nd'
select name from meve_student where dept_name = 'CSE'
select name from meve_student where roll = '06543201'

CREATE TABLE
    meve_studentInfo (
        roll varchar(10),
        name varchar(50),
        father_name varchar(50),
        address varchar(50),
        mobile varchar(50),
        primary key (roll),
        foreign key (roll) references meve_student(roll)
    );

insert into meve_studentInfo 
values('06543201', 'Rahim', 'Ataur', 'Rajshahi', '01719201233');

insert into meve_studentInfo 
values('06543202', 'Karim', 'Tarek', 'Dhaka', '01719202020');

insert into meve_studentInfo 
values('06543203', 'Motin', 'Rahman', 'Khulna', '01719202678');

insert into meve_studentInfo 
values('06543206', 'Swadhin', 'Fazlu', 'Rajshahi', '01719204564');

insert into meve_studentInfo 
values('06543207', 'Hena', 'Rahman', 'Rajshahi', '01719212020');

insert into meve_studentInfo 
values('06543208', 'Sohag', 'Fazlul', 'Natore', '01719202222');


select name, address from meve_studentInfo where mobile = '01719202020'

select name, address from meve_studentInfo where address = 'Rajshahi'

select name, address from meve_studentInfo where address = 'Rajshahi' and father_name = 'Rahman'

select name, address from meve_studentInfo where roll = '05654456'

-- creating table
create table
    instructor_final (
        id varchar(50),
        name varchar(50),
        dept varchar(50),
        salary number (10, 2)
    )

update 
    instructor_final
    set salary=20000
    

create table
    auditinstructor_final (
        id varchar(50),
        name varchar(50),
        dept varchar(50),
        salary number (10, 2),
        updated varchar(50),
        user_id varchar(50)
    )
    --
    -- write a trigger that check any update or delete of table data instructor_final(id,name,dept,salary) and stores old data, the date and the user who modified this into an audit table auditinstructor_final
    -- 
create or replace trigger auditinstructor_trigger after update or delete on instructor_final 
for each row 
begin

if updating then DBMS.

insert into
    auditinstructor_final
values
    (
        :old.id,
        :old.name,
        :old.dept,
        :old.salary,
        sysdate,
        :old.id
    );

end;

select * from instructor_final
select * from auditinstructor_final

update instructor_final set salary=30000
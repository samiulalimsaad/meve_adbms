create table
    meve_auditaccount_2209 (
        a_name varchar(50),
        a_number numeric(10),
        balance numeric(10),
        op varchar(10),
        udate date,
    );

-- trigger

create or replace trigger audit_trail
    after update or delete on meve_account_2209
    for each row

declare
    balance numeric(10, 2);
    op varchar(10);
    a_name varchar(50);
    a_number numeric(10);

begin

    if updating then op:='Update'; end if;
    if deleting then op:='Delete'; end if;


    balance:= :old.balance;
    a_name:= :old.a_name;
    a_number:= :old.a_number;

    insert into meve_auditaccount_2209
    values(a_name,a_number,balance,op,sysdate);
end;
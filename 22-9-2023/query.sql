-- trigger 1
create table
    meve_account_2209 (
        a_name varchar(50),
        a_number numeric(10),
        balance numeric(10),
        primary key (a_name)
    );

-- Inserting 10 rows into the meve_account_2209 table
-- Row 1
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account1', 1234567891, 100.00);

-- Row 2
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account2', 1234567892, 200.00);

-- Row 3
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account3', 1234567893, 300.00);

-- Row 4
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account4', 1234567894, 400.00);

-- Row 5
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account5', 1234567895, 500.00);

-- Row 6
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account6', 1234567896, 600.00);

-- Row 7
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account7', 1234567897, 700.00);

-- Row 8
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account8', 1234567898, 800.00);

-- Row 9
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account9', 1234567899, 900.00);

-- Row 10
INSERT INTO
    meve_account_2209 (a_name, a_number, balance)
VALUES
    ('Account10', 1234567890, 1000.00);

-- trigger
create or replace trigger check_balance 
before update of balance on meve_account_2209 
for each row declare new_balance numeric(10, 2);
begin new_balance:= :new.balance;
if new_balance<0 then
raise_application_error(-20001,'Balance can not be negative');
end if
end;

update meve_account_2209 set a_number=a_number-1 where a_name='Account1'
select* from meve_account_2209 where a_name='Account1'
create table
    meve_user_trigger_2909 (name varchar(50), email varchar(50));

-- 
create
or replace trigger no_update before
update on meve_user_trigger_2909 for each row begin if (
    TO_CHAR (sysdate, 'Dy') = 'Fri'
    and (
        TO_CHAR (sysdate, 'HH24') between '17:30' and '18:30'
    )
) then raise_application_error (-20000, 'Can not perform DML Operation');

end if;

end;

-- 
update meve_account_2209
set
    email = 'aaa@gmail.com'
from
    meve_user_trigger_2909
where
    email = 'john.doe@example.com'
    -- Inserting a single row into the table
INSERT INTO
    meve_user_trigger_2909 (name, email)
VALUES
    ('John Doe', 'john.doe@example.com');

INSERT INTO
    meve_user_trigger_2909 (name, email)
VALUES
    ('Alice Smith', 'alice.smith@example.com')
INSERT INTO
    meve_user_trigger_2909 (name, email) ('Bob Johnson', 'bob.johnson@example.com')
INSERT INTO
    meve_user_trigger_2909 (name, email) ('Eve Anderson', 'eve.anderson@example.com');
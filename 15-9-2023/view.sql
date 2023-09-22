create view
    vw_meve_person_3 as
select
    nid,
    name,
    address
from
    meve_person
where
    address = 'Rajshahi';

select
    *
from
    vw_meve_person;

INSERT INTO
    vw_meve_person (nid, name, address)
VALUES
    (111, 'AAA', 'RRR');

INSERT INTO
    vw_meve_person_3 (nid, name, address)
VALUES
    (222, 'BBB', 'BBB');
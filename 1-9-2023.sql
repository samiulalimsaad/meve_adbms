-- (i) meve_person (nid, name, address)
-- (ii) meve_car (license, year, model)
-- (iii) meve_accident (date, driver, damage-amount)
-- (iv) meve_owns (nid, license)
-- (v) meve_log (license, date, driver)


CREATE TABLE
    meve_person (
        nid varchar(50),
        name varchar(50),
        address varchar(50),
        primary key (nid)
    );

CREATE TABLE
    meve_car (
        nid varchar(50),
        license varchar(50),
        year varchar(50),
        model varchar(50),
        primary key (license)
    );

CREATE TABLE
    meve_accident (
        accident_date date,
        driver varchar(50),
        damage_ammount numeric(5),
        primary key (accident_date)
    );

CREATE TABLE
    meve_owns (
        nid varchar(50),
        license varchar(50),
        primary key (nid),
        foreign key (nid) references meve_person(nid),
        foreign key (license) references meve_car(license)
    );

CREATE TABLE
    meve_log (
        license varchar(50),
        log_date date,
        driver varchar(50),
        primary key (license,log_date,driver),
        foreign key (license) references meve_car(license)
    );


-- Insert data into meve_person table
INSERT INTO meve_person (nid, name, address) VALUES (123451, 'Arif', 'Rajshahi');
INSERT INTO meve_person (nid, name, address) VALUES (123452, 'Sumon', 'Moynamati');
INSERT INTO meve_person (nid, name, address) VALUES (123453, 'Sagor', 'Sirajgang');
INSERT INTO meve_person (nid, name, address) VALUES (123454, 'Abdul', 'Rajshahi');
INSERT INTO meve_person (nid, name, address) VALUES (123455, 'Himesh', 'Dhaka');
INSERT INTO meve_person (nid, name, address) VALUES (123456, 'Amirul', 'Sylhet');
INSERT INTO meve_person (nid, name, address) VALUES (123457, 'Sajib', 'Chittagang');

-- Insert data into meve_car table
INSERT INTO meve_car (license, year, model) VALUES ('11-3000', 2012, 'Axio');
INSERT INTO meve_car (license, year, model) VALUES ('12-3000', 2008, 'Corolla');
INSERT INTO meve_car (license, year, model) VALUES ('12-4000', 2013, 'Axio');
INSERT INTO meve_car (license, year, model) VALUES ('12-5000', 2013, 'Premio');
INSERT INTO meve_car (license, year, model) VALUES ('11-5000', 2010, 'Nano');
INSERT INTO meve_car (license, year, model) VALUES ('11-6000', 2011, 'Alto');
INSERT INTO meve_car (license, year, model) VALUES ('12-6000', 2015, 'Nano Twist');

-- Insert data into meve_accident table
INSERT INTO meve_accident VALUES (TO_DATE('12/01/2013', 'DD/MM/YYYY'), 'Arif', 10000);
INSERT INTO meve_accident VALUES (TO_DATE('25/09/2015', 'DD/MM/YYYY'), 'Komol', 12000);
INSERT INTO meve_accident VALUES (TO_DATE('20/06/2014', 'DD/MM/YYYY'), 'Bahadur', 11000);
INSERT INTO meve_accident VALUES (TO_DATE('20/12/2011', 'DD/MM/YYYY'), 'Abdul', 8000);
INSERT INTO meve_accident VALUES (TO_DATE('19/09/2015', 'DD/MM/YYYY'), 'Akter', 7000);
INSERT INTO meve_accident VALUES (TO_DATE('15/05/2013', 'DD/MM/YYYY'), 'Arif', 20000);
INSERT INTO meve_accident VALUES (TO_DATE('20/08/2014', 'DD/MM/YYYY'), 'Arif', 15000);

-- Insert data into meve_owns table
INSERT INTO meve_owns VALUES (123451, '11-3000');
INSERT INTO meve_owns VALUES (123452, '12-4000');
INSERT INTO meve_owns VALUES (123453, '12-5000');
INSERT INTO meve_owns VALUES (123454, '11-5000');
INSERT INTO meve_owns VALUES (123455, '11-6000');
INSERT INTO meve_owns VALUES (123456, '12-6000');
INSERT INTO meve_owns VALUES (123457, '12-3000');

-- Insert data into meve_log table
INSERT INTO meve_log VALUES ('11-3000', TO_DATE('12/01/2013', 'DD/MM/YYYY'), 'Arif');
INSERT INTO meve_log VALUES ('12-4000', TO_DATE('25/09/2015', 'DD/MM/YYYY'), 'Komol');
INSERT INTO meve_log VALUES ('11-6000', TO_DATE('20/06/2014', 'DD/MM/YYYY'), 'Bahadur');
INSERT INTO meve_log VALUES ('11-5000', TO_DATE('20/12/2011', 'DD/MM/YYYY'), 'Abdul');
INSERT INTO meve_log VALUES ('12-6000', TO_DATE('19/09/2015', 'DD/MM/YYYY'), 'Akter');
INSERT INTO meve_log VALUES ('11-3000', TO_DATE('15/05/2013', 'DD/MM/YYYY'), 'Arif');
INSERT INTO meve_log VALUES ('11-3000', TO_DATE('20/08/2014', 'DD/MM/YYYY'), 'Arif');



-- b) Find the names of all person who live in Rajshahi.
select name from meve_person where address = 'Rajshahi'

-- c) Which model was sold in 2013?
select model from meve_car where year = '2013'

-- d) Find the name of those driver where damage amount is between 10000 and 15000.
select driver from meve_accident where damage_ammount>=10000 and damage_ammount<=15000

-- e) Find the national id (nid) of those person who has Axio.
select nid from meve_owns where license in ( select license from meve_car where model = 'axio');

-- f) Find the name and address of those person who has Alto.
select * from meve_person where nid in ( 
        select nid from meve_owns where license in ( 
            select license from meve_car where model = 'Alto'
        )
);

-- g) Who (driver) was involved in the accident by 20/12/2011?
select driver from meve_accident where accident_date = TO_DATE('20/12/2011', 'DD/MM/YYYY')

-- h) Who was the owner of the car with license 12-4000?
select * from meve_person where nid in ( 
        select nid from meve_owns where license ='12-4000'
);

-- i) Who was the owner of the car whose driver is Arif?
select * from meve_person where nid in ( 
        select nid from meve_owns where license in ( 
            select license from meve_log where driver = 'Arif'
        )
);


-- j) Which car was involved in accident by 19/09/2015?
select * from meve_accident where accident_date = TO_DATE('19/09/2015', 'DD/MM/YYYY')

-- k) Find the number of accidents in which the cars belonging to “Arif” were involved.
select count(driver) from meve_accident where driver = 'Arif'

-- l) Find the dates of accidents in which the cars belonging to “Arif” were involved.
select accident_date from meve_accident where driver = 'Arif'

-- m) Modify the database so that “Arif” now lives in Natore.
update meve_person set address='Natore' where name = 'Arif'
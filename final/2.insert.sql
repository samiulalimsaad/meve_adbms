insert into
    salesman
values
    ('S01', 'Babu', 'Rajshahi', 20000)
insert into
    salesman
values
    ('S02', 'Baalam', 'Dhaka', 30000)
insert into
    salesman
values
    ('S03', 'Beauty', 'Sylhet', 25000)
insert into
    salesman
values
    ('S04', 'Bindu', 'Natore', 28000)
    -- -----------------------------
insert into
    customer
values
    ('C01', 'Abid', 'Rajshahi', 'Cement')
insert into
    customer
values
    ('C02', 'Ashik', 'Rajshahi', 'Aluminium')
insert into
    customer
values
    ('C03', 'Amirul', 'Dhaka', 'Cement')
insert into
    customer
values
    ('C04', 'Atiq', 'Chittagram', 'Purifier')
insert into
    customer
values
    ('C05', 'Ataur', 'Sylhet', 'Chocolate')
insert into
    customer
values
    ('C06', 'Anjan', 'Natore', 'Freeze')
    ------------------------
insert into
    order_final
values
    (
        '001',
        'C06',
        'S02',
        'Freeze',
        20,
        '19-JAN-2023',
        600000
    )
insert into
    order_final
values
    (
        '002',
        'C01',
        'S01',
        'Cement',
        30,
        '20-FEB-2023',
        150000
    )
insert into
    order_final
values
    (
        '003',
        'C02',
        'S03',
        'Aluminium',
        10,
        '28-FEB-2023',
        100000
    )
insert into
    order_final
values
    (
        '004',
        'C04',
        'S01',
        'Purifier',
        30,
        '28-FEB-2023',
        180000
    )
insert into
    order_final
values
    (
        '005',
        'C06',
        'S04',
        'Freeze',
        40,
        '20-MAR-2023',
        800000
    )
insert into
    order_final
values
    (
        '006',
        'C05',
        'S04',
        'Chocolate',
        10,
        '27-JUN-2023',
        10000
    )
insert into
    order_final
values
    (
        '007',
        'C03',
        'S03',
        'Cement',
        30,
        '20-AUG-2023',
        150000
    )
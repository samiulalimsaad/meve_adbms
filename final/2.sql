create table
    customer (
        cid varchar(50),
        cname varchar(50),
        city varchar(50),
        product varchar(50),
        primary key (cid)
    )
create table
    salesman (
        sid varchar(50),
        Sname varchar(50),
        City varchar(50),
        salary varchar(50),
        primary key (sid)
    )
create table
    order_final (
        oid varchar(50) unique,
        cid varchar(50),
        sid varchar(50),
        product varchar(50),
        quantity number (10),
        order_date date,
        order_amount number (10),
        primary key (oid, cid, sid),
        foreign key (cid) references customer (cid),
        foreign key (sid) references salesman (sid)
    )
    -- 
drop table order_final
drop table customer
drop table salesman
-- a
select
    *
from
    salesman
where
    city = 'Rajshahi'
    -- b
select
    sname,
    cname
from
    salesman,
    customer
    -- c########
select
    sname,
    salary
from
    salesman
where
    sid in (
        select
            sid
        from
            order_final
        where
            cid in (
                select
                    cid
                from
                    customer
                where
                    cname = 'Amirul'
            )
    )
    -- #########
    -- d
select
    sum(order_amount)
from
    order_final
where
    cid in (
        select
            cid
        from
            customer
        where
            cname = 'Anjan'
    )
    -- e
delete from order_final
where
    cid in (
        select
            cid
        from
            customer
        where
            cname = 'Ataur'
    )
-- select * from `RequestAccepted`;

-- 1. find MODE (modus) of accepter_id
-- select r.accepter_id, count(1)
-- from `RequestAccepted` r
-- group by
--     r.accepter_id
-- order by count(1) desc
-- limit 1;

-- 2. find MODE (modus) of requested_id
-- select r.requester_id, count(1)
-- from `RequestAccepted` r
-- group by
--     r.requester_id
-- order by count(1) desc
-- limit 1;

-- 3. append themselves and get the mode of either requester_id or accepter_id, then we can get the one who has more friends
select x.accepter_id as id, count(1) as num
from (
        select null as requester_id, r1.accepter_id, null as accept_date
        from `RequestAccepted` r1
        union all
        select
            null as requester_id, r2.requester_id as accepter_id, null as accept_date
        from `RequestAccepted` r2
    ) x
group by
    x.accepter_id
order by count(1) DESC
limit 1;
-- Runtime: 1105ms
-- i have no idea atm to improve this ...
select t.teacher_id, count(distinct t.subject_id) as cnt
from Teacher t
group by
    t.teacher_id;
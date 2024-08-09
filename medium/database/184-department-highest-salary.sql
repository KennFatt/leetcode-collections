-- Language: mysql
-- Status: ac (attempts > 1)
-- Runtime: 677 ms

# Write your MySQL query statement below

-- Find the highest salary of each department
-- select e.departmentId, max(e.salary)
-- from Employee e
-- group by e.departmentId;

-- Find the employee who has that salary
-- with x as (
--     select e.departmentId as dept_id, max(e.salary) as max_salary
--     from Employee e
--     group by e.departmentId
-- )
-- select
--     d.name as Department,
--     e.name as Employee,
--     e.salary as Salary
-- from x
-- left join Employee e on e.salary = x.max_salary
-- left join Department d on d.id = x.dept_id;

with
    x as (
        select e.departmentId as dept_id, max(e.salary) as max_salary
        from Employee e
        group by
            e.departmentId
    )
select
    d.name as Department,
    e.name as Employee,
    e.salary as Salary
    -- e.id,
    -- e.name,
    -- e.salary,
    -- d.name as department,
    -- x.max_salary
from
    Employee e
    left join Department d on d.id = e.departmentId
    left join x on d.id = x.dept_id
where
    e.salary = x.max_salary
order by e.salary desc;
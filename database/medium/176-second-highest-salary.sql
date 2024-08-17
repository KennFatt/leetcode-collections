-- Language: mysql
-- Status: ac
-- Runtime: 218 ms

SELECT IFNULL(
        (
            SELECT DISTINCT
                e.salary
            FROM Employee e
            ORDER BY e.salary DESC
            LIMIT 1
            OFFSET
                1
        ), null
    ) as SecondHighestSalary;
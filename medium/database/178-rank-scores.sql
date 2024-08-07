-- Language: mysql
-- Status: ac
-- Runtime: 386 ms

SELECT s.score as `score`, DENSE_RANK() OVER w as `rank`
FROM Scores s
WINDOW w AS (
        ORDER BY s.score DESC
    );
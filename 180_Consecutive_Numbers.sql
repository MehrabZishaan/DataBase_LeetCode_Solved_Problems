SELECT DISTINCT a.num AS ConsecutiveNums
FROM Logs a, Logs b, Logs c
WHERE a.id = b.id+1 AND a.num = b.num
AND a.id = c.id+2 AND a.num = c.num;

-- another solution
SELECT DISTINCT a.num AS ConsecutiveNums FROM Logs a
JOIN Logs b ON a.Id = b.Id+1 AND a.Num = b.Num
JOIN Logs c ON a.Id = c.Id+2 AND a.Num = c.Num;

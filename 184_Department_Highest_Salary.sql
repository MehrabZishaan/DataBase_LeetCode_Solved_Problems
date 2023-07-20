SELECT d.name AS Department,
		e.name AS Employee,
		e.salary AS Salary
FROM department d JOIN employee e ON d.id = e.departmentId
WHERE (departmentId, salary) IN
(SELECT departmentId, max(salary) FROM employee GROUP BY departmentId);
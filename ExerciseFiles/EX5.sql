-- joins on more than two tables, what employees are responsible for the 10 highest individual sales.

SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
FROM
	Invoice as i
INNER JOIN
	Customer as c
on
	i.CustomerId = c.CustomerId
INNER JOIN
	Employee as e
on 
	c.SupportRepId = e.EmployeeId
ORDER by
	i.total DESC
LIMIT 10

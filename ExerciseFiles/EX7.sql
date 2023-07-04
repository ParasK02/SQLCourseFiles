-- calculate ages of all Employee

SELECT
	LastName,
	FirstName,
	BirthDate,
	strftime('%Y-%m-%d',Birthdate) as[BirthDate no timecode],
	strftime('%Y-%m-%d','now') - strftime('%Y-%m-%d',Birthdate) as age
FROM
	Employee

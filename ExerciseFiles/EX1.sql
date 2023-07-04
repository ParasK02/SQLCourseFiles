/*
CREATED BY: PARAS KUMAR
CREATED DATE: 07/04/2023
DESCRIPTION: This QUERY displays all customers first, last names and email addresses 
*/
SELECT
	FirstName AS [Customer FirstName], 
	LastName as 'Customer LastName',
	Email as EMAIL 
FROM 
	Customer
ORDER BY 
	FirstName ASC,
	LastName DESC
LIMIT 10

-- create mailing list of us Customers 

SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' '||LastName || ' '|| Address|| ','|| City||' '||State||' '||PostalCode as[Mailing Address],
	length(postalcode),
	substr(postalcode,1,5) as[5 Digit PostalCode],
	upper(firstname) as [FirstName ALL CAPS],
	lower(lastname) as[LastName all lower]
FROM
	Customer
WHERE
	Country = 'USA'

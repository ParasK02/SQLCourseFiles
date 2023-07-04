-- Subqueries and DISTINCT: which tracks are not selling?
SELECT
	TrackId,
	Composer,
	Name
FROM
	Track
WHERE
	TrackId NOT in 
(SELECT
	DISTINCT
	TrackId
FROM
	InvoiceLine
ORDER by
	TrackId)

--description: views and joins 
CREATE VIEW V_Tracks_InvoiceLine as
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine il
INNER JOIN
	Track t
on il.TrackId = t.TrackId

-- DML: inserting data 

INSERT INTO
	Artist(name)
VALUES('Bob Marley')

-- DML: updating data 
UPDATE
	Artist
SET Name = 'Damien Marley'
WHERE 
	ArtistId = 276

--DML: Deleting Data 

DELETE FROM
	Artist
WHERE
	ArtistId = 276


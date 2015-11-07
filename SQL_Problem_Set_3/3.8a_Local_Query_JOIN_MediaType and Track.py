QUERY = '''
SELECT count(MediaType.Name), Genre.Name
FROM Track
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE MediaType.Name = 'MPEG audio file'
AND Genre.Name = 'Pop';
'''
QUERY = '''
SELECT Genre.Name, COUNT(Genre.Name)
FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId,
(SELECT avg(Milliseconds) AS average FROM Track) as subquery
WHERE Milliseconds < average
GROUP BY Genre.Name
ORDER BY COUNT(Genre.Name)
DESC
LIMIT 1;
'''
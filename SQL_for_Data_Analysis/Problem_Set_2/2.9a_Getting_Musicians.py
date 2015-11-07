##  Now that we know that our customers love rock music, we can decide which musicians to 
##  invite to play at the concert. 

##  Let's invite the artists who have written the most rock music in our dataset.
##  Write a query that returns the Artist name, and total track count of the top 10 rock bands. 


QUERY ='''
SELECT Artist.Name as Artist, COUNT(Genre.Name) as count
FROM Genre 
JOIN Track ON Genre.GenreId = Track.GenreId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
WHERE Genre.Name = 'Rock'
GROUP BY Artist
ORDER BY count
DESC
LIMIT 10;
'''
'''
---Visual Guide---

Before Query...

#############      #############      #############      ############
#    Genre  #      #   Track   #      #   Album   #      #  Artist  #
#############      #############      #############      ############
|  GenreId  | ---> |  GenreId  |      |  AlbumId  | ---> | AlbumId  |
+-----------+      +-----------+      +-----------+      +----------+
|  Name     |      |  TrackId  | ---> |  TrackId  |      |  Name    |
+-----------+      +-----------+      +-----------+      +----------+

After Query...

#######################################
#             GenreArtist             #
#######################################
|  Artist.Name  |  COUNT(Genre.Name)  |
+---------------+---------------------+

'''
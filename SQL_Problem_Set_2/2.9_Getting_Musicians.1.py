##  Now that we know that our customers love rock music, we can decide which musicians to 
##  invite to play at the concert. 

##  Let's invite the artists who have written the most rock music in our dataset.
##  Write a query that returns the Artist name, and total track count of the top 10 rock bands. 


QUERY ='''
SELECT ...
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
##  It would be really helpful to know what type of music everyone likes before throwing this festival.
##  Lucky for us we've got the data to find out!  
##  We should be able to tell what music people like by figuring out what music they're buying.

##  Write a query that returns the BillingCity, Genre, and total number of 
##  invoices associated with that particular genre.

##  Return the top 3 most popular music genres for the city 
##  with the highest invoice total (you found this in the previous quiz!)

QUERY ='''
SELECT Invoice.BillingCity, Genre.Name, COUNT(Genre.Name)
FROM Invoice
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE BillingCity = "Prague"
GROUP BY Genre.Name
ORDER BY COUNT(Genre.Name)
DESC
LIMIT 3;
'''

'''
---Visual Guide---

Before Query...

###############       #################       #############      #############
#  Invoice    #       #  InvoiceLine  #       #   Track   #      #   Genre   #
###############       #################       #############      #############
|  InvoiceId  | --->  |  InvoiceId    |       |  GenreId  | ---> |  GenreId  |
+-------------+       +---------------+       +-----------+      +-----------+
|  BillingCity|       |  TrackId      |  ---> |  TrackId  |      |  Name     |  
+-------------+       +---------------+       +-----------+      +-----------+

After Query..

##########################
#       InvoiceGenre     #
##########################
|  BillingCity  |  Name  |
+---------------+--------+

'''




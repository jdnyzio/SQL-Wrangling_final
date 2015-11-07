##  It would be really helpful to know what type of music everyone likes before throwing this festival.
##  Lucky for us we've got the data to find out!  
##  We should be able to tell what music people like by figuring out what music they're buying.

##  Write a query that returns the BillingCity, Genre, and total number of 
##  invoices associated with that particular genre.

##  Return the top 3 most popular music genres for the city 
##  with the highest invoice total (you found this in the previous quiz!)

QUERY ='''
SELECT ...
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




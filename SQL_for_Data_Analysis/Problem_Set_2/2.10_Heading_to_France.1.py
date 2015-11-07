##  The show was a huge hit! Congratulations on all your hard work :)  
##  After the popularity of your first show you can jump on the railway for a tour 
##  through France and end with a final show in Paris!  

##  Can you find what music they like in each of the French cities in your dataset?
##  Show the total number of invoices associated with each genre of music in
##  all French cities.  
##  Order your output by the city name and genre type.  


QUERY = '''
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
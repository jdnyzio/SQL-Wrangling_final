##  Rock Music Lives on!  After the success of your recent email campaign,  
##  you're interested in targeting your long standing Rock Music audience!
##  You'll need to collect a list of emails containing each of your Rock Music listeners.

##  Use your query to return the full name, email, and Genre of all Rock Music listeners!
##  Can you find a way to deal with duplicate email addresses so no one receives multiple emails?


QUERY ='''
SELECT Customer.FirstName, Customer.LastName, Customer.Email as Email, Genre.Name
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE Genre.Name="Rock"
GROUP BY Email;
'''

'''
---VISUAL GUIDE---

Before query...

##############     ###############     #################     ############      ###########
#  Customer  #     #  Invoice    #     #  InvoiceLine  #     #  Track   #      #  Genre  # 
##############     ###############     #################     ############      ###########
| CustomerId | --> | CustomerId  |     |  TrackId      | --> | TrackId  |      |  Name   |
+============+     +=============+     +===============+     +==========+      +=========+
| FirstName  |     |  InvoiceId  | --> |  InvoiceId    |     | GenreId  | -->  | GenreId |
+============+     +=============+     +===============+     +==========+      +=========+
|  LastName  |                                                  
+============+
|   Email    |                                                              
+============+

After query...

###############################################
#                 CustomerGenre               #   <-----RESULT!
###############################################
|  FirstName  |  LastName  |  Email  |  Name  |
+=============+============+=========+========+
'''
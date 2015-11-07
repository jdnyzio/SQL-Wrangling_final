##  Let's throw a promotional Music Festival in the city with the best customers!
##  Which city have you made the most money from?

##  Write a query that returns the 1 city that has the highest sum of invoice totals.
##  Return both the city name and the total number of invoices.


QUERY ='''
SELECT ...
'''

'''
---VISUAL GUIDE---

Before Query...

#######################
#        Invoice      #            <--- FROM 
#######################
| BillingCity | Total |           <--- SELECT 
+-------------+-------+

After Query...

##################################   
#          Invoice               #   <-----  RESULT!
##################################   
|  BillingCity  |  sum(Total)    |
+===============+================+
|   Top City      Total Invoices |
+---------------+----------------+
'''


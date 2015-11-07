##  Let's take some time to thank your best Customers! 
##  Anyone with an invoice of at least 10 dollars definitely deserves 
##  an email thanking them for their patronage.  

##  Build a query that returns the full name, email, and invoice total of 
##  these incredible customers.  

##  Order them by their invoice total with the highest amount on top. 
##  This way your very best customers are sure to be taken care of first!

QUERY ='''
SELECT Customer.FirstName, Customer.LastName, Customer.Email, Invoice.Total 
FROM Customer
JOIN  Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.Total > 10.00
ORDER BY Invoice.Total
DESC;
'''


'''
---VISUAL GUIDE---

Before Query...

###############         ####################   
#  Customer   #         #     Invoice      #   <-----  FROM/JOIN
###############         ####################   
|  CustomerId | = ON  = | CustomerId       |   
+=============+         +==================+  
|  FirstName  |         | Total            |  <-----  WHERE Total > 10.00
+=============+         +==================+  
|  LastName   |     
+=============+                 
|  Email      |               
+=============+

After Query...

###################################################   
#             CustomerInvoice                     #   <-----  RESULT!
###################################################   
|  FirstName  |  LastName  |  Email  |    Total   |
+=============+============+=========+============+
                                       Total > 10
'''









    
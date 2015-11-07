'''

Welcome to your first Problem Set!  

Problem Sets are here to get you set up and ready to start doing
amazing things using SQL.

Lets jump right in...

You can uncomment the next line and hit Test Run to see the result of your 
first query!

'''

#QUERY = "SELECT Composer, Name FROM Track WHERE Composer='Van Halen';"

'''

NICE WORK!  Were you able to see the output below?  That's your data :)

Throughout the problem sets in this course you'll be using the Chinook Database.

This database represents a music store you're going to explore, market, 
and eventually build all on your own!

SQL is all about answering questions driven by your own curiosity and 
excitement about the data you've collected.  

Let's ask our database another question!

'''

'''QUESTION:Which songs in this dataset were written by AC/DC?'''

#QUERY = "SELECT Name FROM Track WHERE Composer='AC/DC';"

'''Do you think that query did a good job answering the question?'''


'''

You'll notice the SQL closely resembles spoken language and it's not 
too hard to figure out what a query is asking.  

See if you can figure out what the following questions are hoping to find!

'''


'''QUESTION: How long would it take to listen to all the songs in our 
dataset that were written by Mozart?'''

#QUERY = "SELECT Composer, sum(Milliseconds) FROM Track WHERE Composer='Wolfgang Amadeus Mozart';"


'''QUESTION: Your QUESTION Here!!'''

#QUERY = "SELECT FirstName, LastName FROM Customer WHERE FirstName='Phil';"


'''QUESTION: Your QUESTION Here!!'''

#QUERY = "SELECT FirstName, LastName, Title, Birthdate FROM Employee;"


'''

Did running your queries return the type of results you might have expected?

I hope so!

A great way to start building your own queries is by knowing which  
tables and columns are held in your database.

One way to learn this is by setting up your own local environment, 
and that's what you'll be doing by the end of this problem set!


Before moving on, could you change this query so that it's answering the question?

'''

'''Which tracks in our dataset were written by Jimi Hendrix?'''

#QUERY = "SELECT Composer, Name FROM Track WHERE Composer = 'Stevie Ray Vaughan';"

'''

Once you've got it, hit submit to collect your first Mystery Piece!

'''

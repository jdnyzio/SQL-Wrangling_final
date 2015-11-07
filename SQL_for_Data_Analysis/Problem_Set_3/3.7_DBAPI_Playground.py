##  Here's a playground to help you get a little more comfortable using DB API
##  Nothing here is graded, you've done a ton of work so far and I think 
##  it'd be great to relax and play a bit!

##  You can connect to the Chinook database you've been using or 
##  to the zoo database you spent time with in class.  
##  This is also a great place to try experiments building queries ##  for the next few quizzes!

import sqlite3

# Fetch records from either chinook.db or zoo.db
db = sqlite3.connect("chinook.db")
c = db.cursor()

QUERY = '''
SELECT ...
'''

c.execute(QUERY)
rows = c.fetchall()

# First, what data structure did we get?
print "Row data:"
print rows

# And let's loop over it too:
print
print "your output:"
for row in rows:
  print "  ", row[0]

db.close()


'''
Reminder - zoo.db schema

###############  ###########   ############   ##############
#   animals   #  #   diet  #   # taxonomy #   # ordernames #
###############  ###########   ############   ##############
|  name       |  | species |   |  name    |   | t_order    |
+-------------+  +---------+   +----------+   +------------+
|  species    |  |  food   |   | species  |   | name       |
+-------------+  +---------+   +----------+   +------------+
|  birthdate  |                | genus    |
+-------------+                +----------+
                               | family   |
                               +----------+ 
                               | t_order  |
                               +----------+
'''
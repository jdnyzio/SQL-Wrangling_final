##  Congratulations on making it to the end!
##  After all your hard work you definitely deserve a gift.

##  Use the Secret Phrases you've collected to fill out this DB API script.
##  Once your ready hit submit and I'll explain what this is :)


HiddenMessage1 = ""
HiddenMessage3 = ""

'''
HIDDEN MESSAGE #2: Fill in your table Schema!
######################
#   Table Name:      #
######################
|Column 1:           |
+--------------------+
|Column 2:           |
+--------------------+
|Column 3:           |
+--------------------+
|Column 4:           |
+--------------------+
|Column 5:           |
+--------------------+
|Column 6:           |
+--------------------+
'''


import os, sys
import difflib
import pandas as pd
import numpy as np
import subprocess
import sqlite3

import query.HiddenMessage1 as QUERY
import query.HiddenMessage3 as database

db = sqlite3.connect(database)
c = db.cursor()
c.execute(QUERY)
columns = c.description
result = []
for value in c.fetchall():
    tmp = {}
    for (index,column) in enumerate(value):
        tmp[columns[index][0]] = column
    result.append(tmp)
df = pd.DataFrame(result)
df = df.to_string(formatters={'statement':'{{:<{}s}}'.format(df['statement'].str.len().max()).format, 'sql':'{{:<{}s}}'.format(df['sql'].str.len().max()).format}, index=False, justify='left')
print df

db.close()




######################################################################
'''Code below this line is building and formatting your query 
into a dataframe!  Experiment if you'd like'''


#Making your column names appear!
columns = c.description
result = []
for value in c.fetchall():
    tmp = {}
    for (index,column) in enumerate(value):
        tmp[columns[index][0]] = column
    result.append(tmp)
#Turn your query into a pandas dataframe.
df = pd.DataFrame(result)
#Left align column and result text.
df = df.to_string(formatters={'statement':'{{:<{}s}}'.format(df['statement'].str.len().max()).format, 'sql':'{{:<{}s}}'.format(df['sql'].str.len().max()).format}, index=False, justify='left')
print df

db.close()

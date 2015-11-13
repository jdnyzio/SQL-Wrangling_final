results = [['johndoe@gmail.com', 'John', 'Doe', 'Rock'], ['janesmith@gmail.com', 'Jane', 'Smitch', 'Rock']]
columns = ['Email', 'FirstName', 'LastName', 'Genre']
df = pd.DataFrame(results, columns=columns)


import pandas as pd
import numpy as np
import subprocess
import sqlite3

from query import QUERY as student_code

def sort_data_frame(df):
    return df.sort_index(axis=1)

def output(q):
    db = sqlite3.connect("chinook.db")
    c = db.cursor()
    try: 
        c.execute(q)
    except sqlite3.OperationalError as e:
        print "SQL Error:"
        print str(e) + "\n"
    result = c.fetchall()
    columns=result[0]
    result = [list(r) for r in result]
    return (result, columns)
    #columns = c.description
    #result = []
    #for value in c.fetchall():
    #   tmp = {}
        #for (index,column) in enumerate(value):
        #    tmp[columns[index][0]] = column
        #result.append(tmp)
    df = pd.DataFrame(result, )
    #return df

student_df = output(student_code)

print student_df        



import pandas as pd
import numpy as np
import subprocess
import sqlite3

from query import QUERY as student_code

def sort_data_frame(df):
    return df.sort_index(axis=1)

def output(q):
    db = sqlite3.connect("chinook.db")
    c = db.cursor()
    try: 
        c.execute(q)
    except sqlite3.OperationalError as e:
        print "SQL Error:"
        print str(e) + "\n"
    results = c.fetchall()
    #columns = ['AlbumId', 'Name', 'TrackId']
    #num_fields = len(c.description)
    columns = [i[0] for i in c.description]
    #columns = c.description
    #result = []
    #for value in c.fetchall():
    #    tmp = []
    #    for (index,column) in enumerate(value):
    #        tmp[columns[index][0]] = column
    #    result.append(tmp)
    df = pd.DataFrame(results, columns=columns)    
    return df

student_df = output(student_code)

print student_df        

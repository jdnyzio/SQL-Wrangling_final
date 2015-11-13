'''
Driver skeleton

1)
import libraries
import student code and solution code

2) call student code and solution code on test input
   student code and solution code should return a pandas
   frame

3) compare student and solution dataframes:
    1) if dfs equal, return success message
    2) if dfs do not equal, write dfs to csv and return diffs


'''


######################################## 1)
import difflib
import pandas as pd
import numpy as np
import subprocess
import sqlite3

from query import QUERY as student_code
from solution import QUERY as solution_code

#---------------------------------------------

def sort_data_frame(df):
    return df.sort_index(axis=1)

def assert_frame_equal(df1, df2, **kwds):
    """ Assert that two dataframes are equal, ignoring ordering of columns"""
    from pandas.util.testing import assert_frame_equal
    return assert_frame_equal(df1.sort_index(axis=1), df2.sort_index(axis=1), check_names=True, check_dtype=True, **kwds)

def diff_dataframe(df1, df2):
    '''
    print the differences between two dataframes.

    df1 is the dataframe created by the student code
    df2 is the dataframe created by the solution code
    '''
    ne_stacked = (df1 != df2).stack()
    changed = ne_stacked[ne_stacked]
    changed.index.names = ['id', 'col']

    difference_locations = np.where(df1 != df2)
    changed_from = df1.values[difference_locations]
    changed_to = df2.values[difference_locations]
    diff_dataframe = pd.DataFrame({'your': changed_from, 'solution': changed_to}, index=changed.index)
    return diff_dataframe

pass_msg = "Good job! Your code worked perfectly.\nOutput by your program below.\n"
fail_msg = "The output by your program does not match the solution ouput."

########################################## 2)
def output(q):
    db = sqlite3.connect("chinook.db")
    c = db.cursor()
    try: 
        c.execute(q)
    except sqlite3.OperationalError as e:
        print "SQL Error:"
        print str(e) + "\n"
    columns = c.description
    result = []
    for value in c.fetchall():
        tmp = {}
        for (index,column) in enumerate(value):
            tmp[columns[index][0]] = column
        result.append(tmp)
    df = pd.DataFrame(result)
    return df

student_df = output(student_code)
solution_df = output(solution_code)


########################################## 3)

if isinstance(student_df, pd.DataFrame):
    try:
        student_copy = student_df.copy()
        student_copy.columns = solution_df.columns
        assert_frame_equal(student_copy, solution_df)
        print pass_msg
        print student_df
    except AssertionError:
        '''    
        The student and solution data frames are not equal
        '''
        print fail_msg + "\nThe first output is the solution output.\nThe second output is your output\n"
        print "solution:"
        print solution_df
        print ""
        print "your output:"
        print student_df
        
    except ValueError:
        '''
        The student and solutions don't have the same number of columns
        '''
        print fail_msg + "\nThe first output is the solution output.\nThe second output is your output\n"
        print "solution:"
        print solution_df
        print ""
        print "your output:"
        print student_df
else:
    print "There was an error with your SQL query"
    print "solution:"
    print solution_df
    print ""
    print "your output:"
    print student_df

import json
import re

if executor_result['stderr'] != '':
    grade_result['correct'] = False
    grade_result['comment'] = executor_result['stderr']
else:
    try:
        result = json.loads(executor_result['stdout'])
        if result:
            info = result['message']
            passed = result['pass']
            if passed == 'false':
                grade_result['correct'] = False
                grade_result['comment'] = info
            else:
                grade_result['correct'] = True
                grade_result['comment'] = info
                grade_result['feedback'] = "AWESOME work!  You nailed it :) \n\nMYSTERY CODE PIECE 1 of 8 = Q"
        else:
            grade_result['correct'] = False
            grade_result['comment'] = "re.search returned None when searching for " + stdout_string
    except ValueError: 
        grade_result['correct'] = False
        grade_result['comment'] = "It looks like your SQL statement may have a syntax error. \nUse the Test Run button to help debug your query!" 

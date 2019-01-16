import robot

suite = robot.parsing.model.TestCaseFile(source="./main.robot")
suite.populate()

# *** Settings ***
# Library     SeleniumLibrary
for i in suite.setting_table.imports:
    print(i.name) # SeleniumLibrary

# *** Test Cases ***
# Main
#     Logger     Hello world
for test in suite.testcase_table:
    print(test)       # <robot.parsing.model.TestCase>
    for i in test.steps:
        print(i)      # <robot.parsing.model.Step>
        print(i.name) # Logger
        print(i.args) # Hello world

# *** Keywords ***
# Logger
#     [Arguments]    ${message}
#     Log To Console     ${message}
for keyword in suite.keyword_table:
    print(keyword)      # <robot.parsing.model.UserKeyword>
    print(keyword.name) # Logger
    print(keyword.args) # [u'${message}']
    for i in test.steps:
        print(i)        # <robot.parsing.model.Step>
        print(i.name)   # Log to Console
        print(i.args)   # [u'${message}']

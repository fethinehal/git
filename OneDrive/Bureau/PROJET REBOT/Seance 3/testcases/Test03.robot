**** Settings ****
Library    SeleniumLibrary



*** Variables ***



*** Test Cases ***
tc01
    [Tags]    regression
    Log    test1
tc02
    [Tags]    regression
    Log    test2
tc03
    [Tags]    sanity
    Log    test3
tc04
    [Tags]    sanity
    Log    test4
tc05
    [Tags]    performance
    Log    test5
tc06
    [Tags]    performance
    Log    test6
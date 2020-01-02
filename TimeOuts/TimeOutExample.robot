*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


*** Test Cases ***
Registration TestCases - Timeout

    open browser    http://demowebshop.tricentis.com/register       chrome
    maximize browser window

    ${time}=    get selenium timeout
    log to console  ${time}

    set selenium timeout    10 seconds
    wait until page contains    Register        #By default it takes 5 Seconds.

    set selenium speed      2 seconds
    select radio button     Gender      M
    input text  name:FirstName      Jack
    input text  name:LastName       Harry
    input text  name:Email          jackharry@outlook.com

    input text  name:Password       jack
    input text  name:ConfirmPassword    jack

    ${spead}=   get selenium speed
    log to console  ${spead}
*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


*** Test Cases ***
Registration TestCases - Timeout

    open browser    http://demowebshop.tricentis.com/register       chrome
    maximize browser window

    ${ImplicitTime}=    get selenium implicit wait
    log to console  ${ImplicitTime}

    set selenium implicit wait  10 seconds

    ${ImplicitTime}=    get selenium implicit wait
    log to console  ${ImplicitTime}

    select radio button     Gender      M
    input text  name:FirstName      Jack
    input text  name:LastName       Harry
    input text  name:Email          jackharry@outlook.com

    input text  name:Password       jack
    input text  name:ConfirmPassword    jack

    ${spead}=   get selenium speed
    log to console  ${spead}
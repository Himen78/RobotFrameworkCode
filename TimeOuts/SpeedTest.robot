*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


*** Test Cases ***
Registration TestCases

    ${spead}=   get selenium speed
    log to console  ${spead}
    open browser    http://demowebshop.tricentis.com/register       chrome
    maximize browser window
    set selenium speed      2 seconds
    select radio button     Gender      M
    input text  name:FirstName      Jack
    input text  name:LastName       Harry
    input text  name:Email          jackharry@outlook.com

    input text  name:Password       jack
    input text  name:ConfirmPassword    jack

    ${spead}=   get selenium speed
    log to console  ${spead}
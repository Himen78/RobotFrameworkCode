*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


*** Test Cases ***
Handle Alert Message
    open browser    http://testautomationpractice.blogspot.com/     chrome
    click element   xpath://button[contains(text(),'Click Me')]     # Open Alert
    sleep  3
    #handle alert    accept
    #handle alert    dismiss
    #handle alert    leave - Alert message open for some time.

    alert should be present     Press a button!
    #alert sgould not be present        Press a button!



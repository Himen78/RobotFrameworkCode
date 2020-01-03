*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


*** Test Cases ***
Open Multiple Browser and Close It
    open browser    http://demowebshop.tricentis.com/register       chrome
    maximize browser window

    open browser    http://automationpractice.com/index.php         chrome
    maximize browser window

    #close browser # For close single browser
    close all browsers
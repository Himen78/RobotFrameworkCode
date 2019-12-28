*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Dropdown Testcase
    open browser    ${url}  ${browser}
    maximize browser window

    #Select the value from dropdown
    select from list by label   continents  South America
    sleep  2
    select from list by index   continents  2

    #List Box Dropdown
    select from list by label   selenium_commands   Browser Commands
    select from list by label   selenium_commands   WebElement Commands
    sleep  2

    #Unselect Dropdown
    unselect from list by label     selenium_commands   Browser Commands

*** Keywords ***
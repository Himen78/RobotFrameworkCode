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

*** Keywords ***
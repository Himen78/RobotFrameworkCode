*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
TestCase for Radio button and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds

    # Radio Buttons
    select radio button     sex     Female
    select radio button     exp     6

    # Check Multiple checkboxes
    select checkbox     BlackTea
    select checkbox     oolongtea

    # Untick selected checkbox
    unselect checkbox   BlackTea


*** Keywords ***

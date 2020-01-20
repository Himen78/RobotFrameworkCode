*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
UserDefine Without Arguments
    LunchBrowser
    input text  name:userName   mercury
    input text  name:password   mercury


*** Keywords ***
LunchBrowser
    [Arguments]     ${appurl1}  ${appbrowser}
    open browser        http://newtours.demoaut.com/    chrome
    maximize browser window
*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Navigation Test
    open browser    https://www.google.co.in/   chrome
    ${loc1}=     get location
    log to console  ${loc1}

    sleep  3

    go to   https://www.bing.com/
    ${loc2}=     get location
    log to console  ${loc2}

    sleep  3

    go back
    ${loc3}=     get location
    log to console  ${loc3}

    close all browsers
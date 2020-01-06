*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

*** Test Cases ***
Manage IFrames in Web Page.
    open browser    https://selenium.dev/selenium/docs/api/java/    chrome
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame
    sleep   3

    select frame    packageFrame
    click link      WebDriver
    unselect frame
    sleep   3

    select frame    classFrame
    click link      Help
    unselect frame
    sleep  3

    close browser






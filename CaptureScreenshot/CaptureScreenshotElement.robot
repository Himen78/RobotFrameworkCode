*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Capture Screenshot Page
    open browser    https://opensource-demo.orangehrmlive.com/      chrome
    maximize browser window
    input text  id:txtUsername  admin
    input text  id:txtPassword  admin123


    capture page screenshot     PageScreenshot.png
    #capture element screenshot      xpath://*[@id='divLogo']/img     Logo.png

    #capture element screenshot      xpath://*[@id='divLogo']/img     C:/Users/Himen/PycharmProjects/TestAutomation/Logo.png


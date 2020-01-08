*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Tabbed Windows Testcases
    open browser    http://demo.automationtesting.in/Windows.html       chrome
    click element   xpath://*[@id="Tabbed"]/a/button
    select window   title=Sakinalium | Home
    click element   xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    sleep  3
    close all browsers
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
InputTextBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${Email_txt}    set variable  id:Email

    element should be visible  ${Email_txt}
    element should be enabled   ${Email_txt}

    input text  ${Email_txt}    jacksteven@gmail.com
    sleep  5
    clear element text  ${Email_txt}
    sleep  3
    close browser



*** Keywords ***

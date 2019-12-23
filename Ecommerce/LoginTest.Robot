*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    jacksteven@gmail.com
    input text  id:Password     Jack@123
    click element   xpath://input[@class='button-1 login-button']

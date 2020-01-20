*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handle ScrollBar With JavaScript
    open browser    https://www.countries-ofthe-world.com/all-countries.html    chrome
    maximize browser window

    #execute javascript  window.scrollTo(0,1000)   # 0 - Horizontal, 2500 - Verticle
    #scroll element into view    xpath://li[contains(text(),'Colombia')]         # Scroll the page up to mention element.

    execute javascript  window.scrollTo(0,document.body.scrollHeight)       # Execute Scroll till the bottom of th page.
    sleep   5
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)      # Execute Scroll till the top of the page.*** Test Cases ***

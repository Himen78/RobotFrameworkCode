*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Mouse Events Test cases
    #Right Click/open context menu
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu   xpath://span[@class='context-menu-one btn btn-neutral']
    sleep  3

    #Double click action
    go to   https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep   3

    #Drag and Drop
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   id:box6     id:box106
    sleep   5

    close browser

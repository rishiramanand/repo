*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${browser}
    MAXIMIZE BROWSER WINDOW

End Web Test
    Close Browser

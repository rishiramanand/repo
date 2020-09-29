*** Settings ***
Library    SeleniumLibrary
Resource    ../Objects.robot
Resource    ../Objects.robot

*** Variables ***

*** Keywords ***
Load
    [Documentation]    The URL is fetched from the test file, method is to navigate to the url specified
    Go To  ${url}
    wait until element is visible    ${email_id_login}

Login_Process
    [Documentation]    This method is for the login process
    [Arguments]    ${user}  ${pass}
    input text    ${email_id_login}  ${user}
    click element    ${email_id_next}
    wait until element is visible    ${password}
    wait until element is enabled    ${password}
    input text    ${password}  ${pass}
    click element    ${password_next}
    wait until element is visible    ${hangouts_section}  10
    wait until element is visible    ${compose}
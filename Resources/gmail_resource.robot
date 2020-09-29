*** Settings ***
Resource    PO/LoginPage.robot
Resource    PO/Email Operations.robot
Resource    PO/LoginPage.robot

*** Variables ***

*** Keywords ***
Login
    [Arguments]  ${arg1}  ${arg2}
    LoginPage.Load
    LoginPage.Login_Process  ${arg1}  ${arg2}

Compose Email New and Send
    [Arguments]    ${arg}
    Email Operations.Compose Click
    Email Operations.Compose Email Body    ${arg}
    Email Operations.Send Mail

Search Mail
    [Arguments]    ${subject}
    Email Operations.Search Email    ${subject}

Delete Mail
    Email Operations.Select All and Delete

Log Out From Account
    Email Operations.Sign Out Account

Click On Searched Email
    [Arguments]    ${body}
    Email Operations.Searched Email Click  ${body}



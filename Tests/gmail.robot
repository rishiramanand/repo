*** Settings ***
Documentation  Open the Browser
...            Goto gmail.com
...            Enter username/password
...            Compose an email and send it to another user
...            Logout and login into new user and validate the email recieved
Resource    ../Resources/Common_gmail.robot
Resource    ../Resources/gmail_resource.robot
Library    SeleniumLibrary
Library    ExcelLibrary

*** Variables ***
${path}  c:\\multirows.xlsx
${sheet_name}  Sheet1
${browser}
${url}  temp
${username}  temp
${password_input}  temp
${recipient}  temp
${mail_body_text}

*** Test Cases ***
Login to Gmail and send email and validate at the recievers end
    close all excel documents
    open excel document    ${path}  id2
    ${rows}  get sheet    ${sheet_name}
    :For  ${row}  IN  @{rows.values}
    set global variable    ${username}  ${row}[0]
    set global variable    ${recipient}  ${row}[0]
    set global variable    ${password_input}  ${row}[1]
    set global variable    ${mail_body_text}  ${row}[2]
    set global variable    ${browser}  ${row}[5]
    set global variable    ${url}  ${row}[6]
    Begin Web Test
    ${randomn}=    Evaluate    random.sample(range(1, 99999999),1)    random
    ${subject_text}=    Catenate    Subject    ${randomn}
    log    ${subject_text}
    gmail_resource.Login  ${username}  ${password_input}
    gmail_resource.Compose Email New and Send    ${subject_text}
    gmail_resource.Log Out From Account
    End Web Test
    Begin Web Test
    gmail_resource.Login  ${username}  ${password_input}
    gmail_resource.Search Mail    ${subject_text}
    gmail_resource.Click On Searched Email    ${mail_body_text}
    gmail_resource.Search Mail    Subject
    gmail_resource.Delete Mail
    sleep    5s
    End Web Test
    END
    close all excel documents

*** Keywords ***



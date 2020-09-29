*** Settings ***
Library    SeleniumLibrary
Resource    ../Objects.robot

*** Variables ***

*** Keywords ***
Compose Click
    click element    ${compose}

Compose Email Body
    [Arguments]    ${sub}
    wait until element is visible  ${to_field}  10
    wait until element is enabled    ${to_field}
    input text    ${to_field}  ${recipient}
    input text  ${subject_field}  ${sub}
    input text    ${mail_body}    ${mail_body_text}

Send Mail
    wait until element is enabled    ${send_button}
    click element    ${send_button}
    wait until element is not visible    ${send_button}
    log  Success!!

Search Email
    [Arguments]    ${mail_subject}
    wait until element is visible    ${search_mail}
    input text    ${search_mail}    ${mail_subject}
    wait until element is visible    ${search_button}
    click button    ${search_button}

Select All and Delete
    sleep    2s
    wait until element is visible    ${select_all}
    click element    ${select_all}
    wait until element is visible    ${delete_mails}
    click element    ${delete_mails}
    wait until element is visible    ${deleted_confirm_text}

Sign Out Account
    wait until element is visible    ${account_image}
    click element    ${account_image}
    sleep    2s
    wait until element is visible    ${sign_out_link}
    click element    ${sign_out_link}

Searched Email Click
    [Arguments]    ${body}
    wait until element is visible    ${search_mail_result}
    click element    ${search_mail_result}
    sleep    2s
    ${response}  Get Text  ${mail_body_searched}
    log  ${response}
    element should contain    ${mail_body_searched}  ${body}

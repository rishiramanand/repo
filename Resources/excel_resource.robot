*** Settings ***
Library    ExcelLibrary

*** Variables ***


*** Keywords ***
Return Row Values
    [Arguments]    ${arg1}
    open excel document    ${path}  id2
    ${temp1}  read excel row    ${arg1}  0  0
    close all excel documents
    log  ${temp1}
    [Return]    ${temp1}
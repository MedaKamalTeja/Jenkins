*** Test Cases ***
*** Settings ***
Library     SeleniumLibrary
Resource    ../Page_Objects/left_menu_po.robot
Resource    ../Page_Objects/login_po.robot

*** Keywords ***
Home Button
    Wait Until Element Is Visible    ${Welcome Page}    timeout=15s
    Click Element    ${Home Icon}
    Sleep    5s

Directory
    Wait Until Element Is Visible    ${Directory Icon}
    Click Element    ${Directory Icon}
    Sleep    3s
    Mouse Out    ${UL}
    Input Text    ${Directory Search}    Pavan
    Sleep    5s

Timesheet
    Click Element    ${Timesheet Icon}
    Sleep    5s
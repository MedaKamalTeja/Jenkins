*** Settings ***
Library     SeleniumLibrary
Resource    ../Page_Objects/daily_timesheet_PO.robot
Resource    ../Variables/daily_timesheet_variables.robot
Resource    ../Keywords/login_keywords.robot
Resource    ../Variables/login_variables.robot
Resource    ../Page_Objects/edit_timesheet_po.robot

*** Keywords ***

Daily Timesheet for week

    Wait Until Element Is Visible    ${Timesheet}       timeout=20s
    Click Element    ${Timesheet}
    Sleep    2s

    Click Element    ${Calender}
    Sleep    2s
    Click Element    ${start date}
    Sleep    3s
    FOR    ${counter}    IN RANGE    1    6
        Wait Until Element Is Visible    ${Add Task}
        Click Element    ${Add Task}
        Sleep    3s
        Input Text    ${Start Time Input}    ${Start Time}
        Sleep    2s
        Press Key    ${Start Time Input}    \\13
        Sleep    2s
        Input Text    ${End Time Input}    ${End Time}
        Sleep    2s
        Press Key    ${End Time Input}    \\13
        Sleep    2s
        Input Text    ${Project Input}    ${Project}
        Sleep    2s
        Click Element    ${Project Element}
        Sleep    2s
        Input Text    ${Task Input}    ${Task}
        Sleep    2s
        Input Text    ${Description Input}    ${Description}
        Click Element    ${Submit}
        Sleep    5s
        Click Element    ${Next Date}
        Sleep    5s

    END
    Log To Console    Timesheet created for a week
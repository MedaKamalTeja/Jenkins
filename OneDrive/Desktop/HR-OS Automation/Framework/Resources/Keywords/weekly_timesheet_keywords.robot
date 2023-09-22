*** Settings ***
Library     SeleniumLibrary
Resource    ../Page_Objects/weekly_timesheet_PO.robot
Resource    ../Page_Objects/daily_timesheet_PO.robot
Resource    ../Variables/daily_timesheet_variables.robot


*** Keywords ***
Weekly Timesheet for a week
    Wait Until Element Is Visible    ${Timesheet}    timeout=20s
    Click Element    ${Timesheet}
    Sleep    5s
    Mouse Out    ${UL}
    Sleep    5s
    Click Element    ${Weekly Input}
    Sleep    5s
    Click Element    ${Add Task}
    Sleep    2s
    Click Element    ${Dates Input}
    Sleep    2s
    Click Element    ${This Week}
    Sleep    5s
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
    Sleep    10s
    Log To Console    Timesheet created successfully
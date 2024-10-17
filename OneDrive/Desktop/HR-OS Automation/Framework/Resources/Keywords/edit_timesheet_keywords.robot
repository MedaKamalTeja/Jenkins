*** Settings ***
Library     SeleniumLibrary
Resource    ../Page_Objects/weekly_timesheet_PO.robot
Resource    ../Page_Objects/daily_timesheet_PO.robot
Resource    ../Variables/daily_timesheet_variables.robot
Resource    ../Page_Objects/edit_timesheet_po.robot


*** Keywords ***
Edit Timesheet on Daily Basis
    Maximize Browser Window
    Wait Until Element Is Visible    ${Timesheet}       timeout=15s
    Click Element    ${Timesheet}
    Sleep    5s
    Click Element    ${Calender}
    Sleep    2s
    Click Element    ${start date}
    Sleep    3s
    FOR    ${counter}    IN RANGE    1    6
        Click Element    ${Edit Icon}
        Sleep    2s
        Input Text    ${Task Input}    ${update task}
        Click Element    ${Update Icon}
        Sleep    6s
        Click Element    ${Next Date}
        Sleep    5s
    END
    Log To Console    Edited Timesheet Successfully

Edit Timesheet on Weekly Basis
    Maximize Browser Window
    Wait Until Element Is Visible    ${Timesheet}       timeout=15s
    Click Element    ${Timesheet}
    Sleep    5s
    Mouse Out    ${UL}
    Click Element    ${Weekly Input}
    Sleep    5s
    FOR    ${i}    IN RANGE    1    6
        Click Element    (${Weekly Navigation})[${i}]
        Sleep    3s
        Mouse Over    (${hover})[${i}]
        Sleep    2s
        Click Element    (${Edit Icon})[${i}]
        Sleep    2s
        Input Text    ${Description Input}    ${Description text}
        Click Element    ${Update Icon}
        Sleep    10s

    END
    Log To Console    Edited Timesheet Successfully

Delete Timesheet on Daily Basis
    Maximize Browser Window
    Wait Until Element Is Visible    ${Timesheet}       timeout=15s
    Click Element    ${Timesheet}
    Sleep    10s
    Click Element    ${Calender}
    Sleep    2s
    Click Element    ${start date}
    Sleep    3s
    FOR    ${counter}    IN RANGE    1    6
        Click Element    ${Delete Icon}
        Sleep    5s
        Click Element    ${Click Yes}
        Sleep    10s
        Click Element    ${Next Date}
        Sleep    6s
    END
    Log To Console    Deleted timesheet successfully

Delete Timesheet on Weekly Basis
    Maximize Browser Window
    Wait Until Element Is Visible    ${Timesheet}       timeout=15s
    Click Element    ${Timesheet}
    Sleep    5s
    Mouse Out    ${UL}
    Click Element    ${Weekly Input}
    Sleep    5s
    FOR    ${i}    IN RANGE    1    6
        Click Element    (${Weekly Navigation})[${i}]
        Sleep    3s
        Mouse Over    (${hover})
        Sleep    2s
        Click Element    (${Delete Icon})
        Sleep    5s
        Click Element    ${Click Ok}
        Sleep    5s

    END
    Log To Console    Deleted timesheet successfully
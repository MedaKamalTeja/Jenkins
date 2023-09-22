*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Keywords/login_keywords.robot
Resource    ../../Resources/Variables/login_variables.robot
Resource    ../../Resources/Keywords/weekly_timesheet_keywords.robot
Resource    ../../Resources/Page_Objects/weekly_timesheet_PO.robot
Resource    ../../Resources/Page_Objects/daily_timesheet_PO.robot
Resource    ../../Resources/Variables/daily_timesheet_variables.robot
Resource    ../../Resources/Keywords/edit_timesheet_keywords.robot

*** Test Cases ***
Edit Timesheet Daily for week weekly basis
    Open Login Page
    Login Details
    Edit Timesheet on Weekly Basis
    Close Browser

Delete Timesheet Daily for week Weekly basis
    Open Login Page
    Login Details
    Delete Timesheet on Weekly Basis
    Close Browser
*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Page_Objects/daily_timesheet_PO.robot
Resource    ../../Resources/Keywords/daily_timesheet_keywords.robot
Resource    ../../Resources/Keywords/login_keywords.robot
Resource    ../../Resources/Variables/login_variables.robot

*** Test Cases ***
Fill Timesheet on Daily Basis
    Open Login Page
    Login Details
    Daily Timesheet for week
    Close Browser
*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Keywords/left_menu_keywords.robot
Resource    ../../Resources/Keywords/login_keywords.robot
Resource    ../../Resources/Page_Objects/left_menu_po.robot
Resource    ../../Resources/Variables/login_variables.robot

*** Test Cases ***
Left Menu Automation
    Open Login Page
    Login Details
    Home Button
    Directory
    Timesheet
    Close Browser
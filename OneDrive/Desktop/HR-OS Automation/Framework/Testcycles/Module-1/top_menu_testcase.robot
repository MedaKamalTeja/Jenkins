*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Page_Objects/login_po.robot
Resource    ../../Resources/Variables/login_variables.robot
Resource    ../../Resources/Page_Objects/top_menu_po.robot
Resource    ../../Resources/Variables/top_menu_variables.robot
Resource    ../../Resources/Keywords/login_keywords.robot
Resource    ../../Resources/Keywords/top_menu_keywords.robot

*** Test Cases ***
Top Menu Automation
    Open Login Page
    Login Details
    Search Icon
    Information Icon
    Notification Icon
    Theme Icon
    Language Icon
    Profile Icon
    Close Browser

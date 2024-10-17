*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Page_Objects/login_po.robot
Resource    ../../Resources/Variables/login_variables.robot
Resource    ../../Resources/Keywords/login_keywords.robot

*** Test Cases ***
Login Test Case
    Open Login Page
    Login Details
    Verify Login
    Close All Browsers

Login with Gmail
    Gmail Login
    Close Browser

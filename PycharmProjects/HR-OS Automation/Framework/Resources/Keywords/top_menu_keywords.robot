*** Settings ***
Library     SeleniumLibrary
Resource    ../Page_Objects/login_po.robot
Resource    ../Variables/login_variables.robot
Resource    ../Page_Objects/top_menu_po.robot
Resource    ../Variables/top_menu_variables.robot
Resource    ../Keywords/login_keywords.robot

*** Keywords ***

Search Icon
    Wait Until Element Is Visible    ${Search Icon}     timeout=20s
    Click Element    ${Search Icon}
    Input Text    ${Search Input}    ${Search Text 1}
    Sleep    5
    Click Element    ${Clear Search}
    Input Text    ${Search Input}    ${Search Text 2}
    Sleep    5
    Click Element    ${Clear Search}
    Sleep    5
    Press Keys      ${Search Icon}      \\27
    Sleep    2s

Information Icon
    Click Element    ${Info Icon}
    Sleep    3s
    Click Element    ${Quick Links}
    Sleep    3s
    Click Element    ${Close Quick Link}
    Sleep    3s
    Click Element    ${Info Icon}
    Sleep    3s
    Click Element    ${My Tickets}
    Sleep    5s
    Go Back
    Click Element    ${Info Icon}
    Sleep    2s
    Click Element    ${FAQ}
    Sleep    3s
    Click Element    ${Go Back Icon}
    Sleep    3s
    Click Element    ${Info Icon}
    Sleep    2s
    Click Element    ${Policies and Regulations}
    Sleep    4s
    Click Element    ${Go Back Icon}
    Sleep    2s
    Click Element    ${Info Icon}
    Sleep    4s
    Click Element    ${HR-OS Help centre}
    Sleep    4s
    Click Element    ${Go Back Icon}
    Sleep    2s

Notification Icon
    Wait Until Element Is Visible    ${Notifications Icon}      timeout=10s
    Click Element    ${Notifications Icon}
    Sleep    3
    Click Element    ${Close Notification}

Theme Icon
    Wait Until Element Is Visible    ${Theme Icon}
    Click Element    ${Theme Icon}
    Sleep    3s
    Click Element    ${Dark Theme}
    Sleep    2s
    Click Element    ${Light Theme}
    Sleep    2s

    Click Element    ${Solid Color 1}
    Sleep    2s
    Click Element    ${Solid Color 2}
    Sleep    2s
    Click Element    ${Close Theme}

Language Icon
    Wait Until Element Is Visible    ${Language Icon}   timeout=5s
    Click Element    ${Language Icon}
    Sleep    2s



Profile Icon
    Wait Until Element Is Visible    ${Profile}
    Click Element    ${Profile}
    Sleep    2s


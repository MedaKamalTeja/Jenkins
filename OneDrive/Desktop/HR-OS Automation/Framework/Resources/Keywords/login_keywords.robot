*** Settings ***
Resource    ../Page_Objects/login_po.robot
Resource    ../Variables/login_variables.robot

*** Keywords ***
Open Login Page
    Open Browser    ${Login Url}    chrome

Login Details
    Wait Until Element Is Visible    ${Email Input}     timeout=5s
    Input Text    ${Email Input}    ${Email}
    Sleep    1
    Input Text    ${Password Input}    ${Password}
    Sleep    1
    Click Element    ${Submit Button}

Verify Login
    ${login_successfull}=   Run Keyword And Return Status    Wait Until Element Is Visible    //p[@class="Welcome__helloText___1pKQz"]      timeout=10s
    Sleep    3
    Run Keyword If    ${login_successfull}    Log To Console    Login Successfull
    Run Keyword Unless    ${login_successfull}    Log To Console    Invalid Credentials

Gmail Login
    Open Browser    ${Login Url}    chrome
    Click Element    ${Terralogic Login}
    Sleep    5

    Switch Window       NEW
    Input Text    ${Gmail Input}    ${Email}
    Click Element    ${Next Button}
    Sleep    3
    Input Text    ${Gmail Password Input}    ${Gmail Password}
    Click Element    ${Next Button}
    Sleep    20

    Switch Window       MAIN
    ${login_successfull}=   Run Keyword And Return Status    Wait Until Element Is Visible    //p[@class="Welcome__helloText___1pKQz"]      timeout=10s
    Run Keyword If    ${login_successfull}    Log To Console    Login Successfull
    Run Keyword Unless    ${login_successfull}    Log To Console    Invalid Credentials
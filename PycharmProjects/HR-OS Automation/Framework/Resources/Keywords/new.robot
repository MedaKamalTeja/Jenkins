*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
search in google
        Open Browser        https://www.google.com/     Edge
        Input Text    //textarea[@title="Search"]    terralogic
        Sleep    1s
        Wait Until Element Is Visible    //input[@value="Google Search"]
        Click Element    //input[@value="Google Search"]  
        Sleep    2s
        Close Browser
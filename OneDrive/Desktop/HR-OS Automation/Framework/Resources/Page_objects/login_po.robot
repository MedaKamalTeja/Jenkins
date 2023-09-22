*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Email Input}      //input[@id="basic_userEmail"]
${Password Input}       //input[@id="basic_password"]
${Submit Button}        //button[@type="submit"]
${Welcome Page}     //p[@class="Welcome__helloText___1pKQz"]

${Terralogic Login}     //div[text()="Terralogic Login"]
${Gmail Input}      //input[@type="email"]
${Next Button}      //button/span[text()="Next"]
${Gmail Password Input}     //input[@type="password"]

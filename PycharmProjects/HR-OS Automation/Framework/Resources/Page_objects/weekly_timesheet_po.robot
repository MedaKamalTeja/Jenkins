*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Weekly Input}     //span[text()="Weekly"]
${Add Task}     //button/div/div[text()="Add Task"]
${Dates Input}      //input[@id="basic_dates"]
${Date}     //div[text()="4"]
${UL}       //ul[@class="ant-menu ant-menu-root ant-menu-inline ant-menu-light ant-pro-sider-menu"]
${This Week}        //span[text()="This Week"]
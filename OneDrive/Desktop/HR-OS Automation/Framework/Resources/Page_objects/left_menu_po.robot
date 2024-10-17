*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Home Icon}        //a[@href="/home"]
${Directory Icon}       //a[@href="/directory"]
${Directory Search}     //input[@type="search"]
${Timesheet Icon}       //a[@href="/time-sheet"]
${UL}       //ul[@class="ant-menu ant-menu-root ant-menu-inline ant-menu-light ant-pro-sider-menu"]
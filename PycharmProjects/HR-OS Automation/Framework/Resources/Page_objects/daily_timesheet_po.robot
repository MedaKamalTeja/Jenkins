*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Timesheet}        //a[@href="/time-sheet"]
${Add Task}     //button/div/div[text()="Add Task"]
${Start Time Input}      //input[@id="basic_tasks_0_startTime"]
${End Time Input}     //input[@id="basic_tasks_0_endTime"]
${Project Input}        //input[@id="basic_tasks_0_projectId"]
${Project Element}      //div[@title="Rampup_Software Services - Terralogic"]
${Task Input}       //input[@placeholder="Enter the task name"]
${Description Input}        //textarea[@placeholder="Enter the description"]
${Submit}        //button[@form="myForm"]
${Next Date}        //img[@src="/static/ic_arrow_right_gray.aaf9b4aa.svg"]
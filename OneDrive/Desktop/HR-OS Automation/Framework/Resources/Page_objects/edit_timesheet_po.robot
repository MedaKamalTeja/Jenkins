*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Calender}     //input[@placeholder="Select date"]
${Edit Icon}        //img[@src="/static/ic_edit.8cd75d9f.svg"]
${Update Icon}      //div[text()="Update"]
${update task}      Edit Task
${Edit Weekly}      //span[@class="boldTextLg___38uOp" and text()="09:00:00"]
${Description text}     edit description
${Delete Icon}      //img[@src="/static/ic_delete.10ddaf87.svg"]
${Click Yes}        //div[text()="Yes"]
${Click Ok}     //div[text()="Ok"]
${start date}       //div[text()="11"]
${Weekly Navigation}     (//span[@class='hourValue___vv8Tf']/..)
${hover}        //div[@class="ant-row ant-row-middle tableRow___2BpeN"]
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Search Icon}      //img[@src="/static/ic_search.10fe83ab.svg"]
${Search Input}     //input[@placeholder="Search..."]
${Clear Search}     //span[@class="ant-input-clear-icon"]
${Close Search}     //div[@tabindex="-1"and @class="ant-modal-wrap"]

${Info Icon}        //img[@src="/static/ic_help.9945fdef.svg"]
${Quick Links}      //span[text()="Quick Links"]
${Close Quick Link}     //img[@src="/static/ic_close.6987e30c.svg"]
${My Tickets}       //span[text()="My Tickets"]
${FAQ}      //span[text()="FAQ"]
${Policies and Regulations}     //span[text()="Policies & Regulations"]
${HR-OS Help centre}        //span[text()="HR-OS Help Center"]
${Go Back Icon}        //img[@src="/static/ic_back.e7f00777.svg"]

${Notifications Icon}       //img[@src="/static/ic_bell.1b1c1f80.svg"]
${Close Notification}      //img [@src="/static/ic_close.6987e30c.svg"]

${Theme Icon}       //img[@src="/static/ic_theme.f154d3ae.svg"]
${Light Theme}      //span[text()="Light"]
${Dark Theme}       //span[text()="Dark"]
${Solid Color 1}        //div[@style="width: 34px; height: 34px; background-color: rgb(250, 84, 28); border-radius: 2px; border: 2px solid transparent; cursor: pointer; --darkreader-inline-bgcolor: #ae3e17; --darkreader-inline-border-top: transparent; --darkreader-inline-border-right: transparent; --darkreader-inline-border-bottom: transparent; --darkreader-inline-border-left: transparent;"]
${Solid Color 2}        //div[@style="width: 34px; height: 34px; background-color: rgb(37, 184, 100); border-radius: 2px; border: 2px solid transparent; cursor: pointer; --darkreader-inline-bgcolor: #328f56; --darkreader-inline-border-top: transparent; --darkreader-inline-border-right: transparent; --darkreader-inline-border-bottom: transparent; --darkreader-inline-border-left: transparent;"]
${Close Theme}      //img[@src="/static/ic_close.6987e30c.svg"]

${Language Icon}     //div[@class="ant-dropdown-trigger languageSelector___2zxz0"]
${English U S}      //span[text()="English"]
${English India}    //span[text()="India"]

${Profile}      //span[@class="ant-avatar ant-avatar-circle ant-avatar-image MyAvatar"]
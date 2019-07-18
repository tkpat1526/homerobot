*** Settings ***
Library  SeleniumLibrary





*** Variables ***
${conversation} =       xpath=//ul[@id="menu"]/li[3]/div/ul/li[5]/div/ul/li[1]/a
${distribution} =       xpath=//ul[@id="menu"]/li[3]/div/ul/li[5]/div/ul/li[2]/a
${leadtoaction} =       xpath=//ul[@id="menu"]/li[3]/div/ul/li[5]/div/ul/li[3]/a
${overview} =           xpath=//ul[@id="menu"]/li[3]/div/ul/li[5]/div/ul/li[4]/a
${transaction} =        xpath=//ul[@id="menu"]/li[3]/div/ul/li[5]/div/ul/li[5]/a
${revenue} =            xpath=//ul[@id="menu"]/li[3]/div/ul/li[5]/div/ul/li[6]/a





*** Keywords ***
Open lead manager - conversion page
    click element                       ${conversation}
    wait until page contains            Lead Conversion
    page should contain                 Lead Conversion
Open lead manager - distribution page
    click element                       ${distribution}
    wait until page contains            Lead Distribution
    page should contain                 Lead Distribution
    title should be                     Lead Distribution
Open lead manager - lead to action page
    click element                       ${leadtoaction}
    wait until page contains            Lead to Action
    page should contain                 Lead to Action
    title should be                     Lead to Action
Open lead manager - overview page
    click element                       ${overview}
    wait until page contains            Lead Overview
    page should contain                 Lead Overview
    title should be                     Lead Overview
Open lead manager - transaction page
    click element                       ${transaction}
    wait until page contains            Lead Transaction
    page should contain                 Lead Transaction
    title should be                     Lead Transaction
Open lead manager - revenue page
    click element                       ${revenue}
    wait until page contains            Lead Revenue
    page should contain                 Lead Revenue
    title should be                     Lead Revenue
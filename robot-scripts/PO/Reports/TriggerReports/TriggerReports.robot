*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${mytriggerreport} =            link=My Trigger Reports

*** Keywords ***
open my trigger reports page
    wait until page contains            My Trigger Reports
    click element                       ${mytriggerreport}
    page should contain                 Trigger Report
    title should be                     Trigger Reports





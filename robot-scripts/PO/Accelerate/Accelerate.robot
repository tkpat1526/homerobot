*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${accelerate}               xpath=//ul[@id="menu"]/li[9]
${accesettings}             link=Settings
${acceconversations}        link=Conversations
${accemapping}              link=Mappings
${capturedetails}           link=Captured Details
${accereports}              link=Audiences
${acceaudience}             link=Reports
*** Keywords ***
Hover to accelerate page
    mouse over                          ${accelerate}
Open Accelerate - settings page
    wait until page contains            Settings
    click element                       ${accesettings}
    page should contain                 Settings        Widget Settings
Open Accelerate - audience page
    wait until page contains            Audiences
    click element                       ${acceaudience}
    page should contain                 Audiences         My Audiences

Open Accelerate - conversation page
    wait until page contains            Conversations
    click element                       ${acceconversations}
    page should contain                 Conversations
open Accelerate - mappings page
    wait until page contains            Mappings
    click element                       ${accemapping}
    page should contain                 Mappings
Open Accelerate - captured details page
    wait until page contains            Captured Details
    click element                       ${capturedetails}
    page should contain                 Captured Details
Open accelerate- reports page
    wait until page contains            Reports
    click element                       ${accereports}
    page should contain                 Reports
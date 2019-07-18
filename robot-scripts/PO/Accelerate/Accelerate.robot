*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${settings1} =              link=Settings
${audience} =               link=Audiences
${conversations} =          link=Conversations
${mappings} =               link=Mappings
${captureddetails} =        link=Captured Details
${reports} =                link=Reports

*** Keywords ***
Open settings page
    wait until page contains                    Settings
    click element                               ${settings1}
    page should contain                         Settings
Open audience page
    wait until page contains                    Audiences
    click element                               ${audience}
    page should contain                         Audiences
Open conversation page
    page should contain                         Conversations
    click element                               ${conversations}
    page should contain                         Conversations

open mappings page
    wait until page contains                    Mappings
    click element                               ${mappings}
    page should contain                         Mappings
Open captured details page
    page should contain                         Captured Details
    click element                               ${captureddetails}
    page should contain                         Captured Details
Open accelerate - reports page
    page should contain                         Reports
    click element                               ${reports}
    wait until page contains                    Reports
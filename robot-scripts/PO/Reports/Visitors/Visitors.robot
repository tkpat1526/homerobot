*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${atoz} =                   link=A - Z
${hiddencompanies} =        link=Hidden Companies
${mostengaged} =            link=Most Engaged




*** Keywords ***
Open atoz page
    wait until page contains                A - Z
    click element                           ${atoz}
    page should contain                     Visitors A-Z
    title should be                         Visitors A-Z
Open hidden companies page
    wait until page contains                Hidden Companies
    click element                           ${hiddencompanies}
    page should contain                     Hidden Companies
    title should be                         Hidden Companies
Open most engagged page
    wait until page contains                Most Engaged
    click element                           ${mostengaged}
    page should contain                     Most Engaged Visitors
    title should be                         Most Active Visitors / Page Views

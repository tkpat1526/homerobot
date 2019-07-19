*** Settings ***
Library  SeleniumLibrary
Library  Collections


*** Variables ***
${dashboard}                link=Dashboard
${veryfydashboard}          id=lbl_dashboardName
${visitorlist}              link=Visitor List
${reportpage}               xpath=//ul[@id="menu"]/li[3]
${leads}                    link=Leads
${Messenger}                link=Messenger
${Search}                   link=Search
${Academy}                  link=Academy
${setup}                    xpath=//ul[@id="menu"]/li[6]
${support}                  xpath=//ul[@id="menu"]/li[7]
${accelerate}               xpath=//ul[@id="menu"]/li[9]



*** Keywords ***
# all the pages with varification
Open Dashboard Page
    click element                   link=Dashboard
    page should contain element     ${veryfydashboard}  Default

Open Visitor List Page
    Sleep    3s
    click element                   ${visitorlist}
    get title
    title should be                 Visitor List
Open Reports pages
    Sleep    5s
    Mouse over                       ${reportpage}



Open Leads Page
    click element                   ${leads}
    sleep  2s
    get title
    title should be                 Leads
Open Messenger Page
    click element                   ${Messenger}
    sleep  2s
    get title
    title should be                 Email Summary
Open Search Page
    click element                   ${Search}
    sleep  2s
    get title
    title should be                 Search
Open Setup pages
    wait until page contains        Setup
    Mouse over                      ${setup}
    Sleep    6s
Open Support page
    Sleep    3s
    Mouse Over                      ${support}
Open Academy Page
    click element                   ${Academy}
    select window   NEw
    sleep  5s
    Get Title
    Title Should Be                 Lead Forensics Academy – Lead Forensics Academy
    Select Window   Main
Open Accelerate page
    Sleep    3s
    Click Element                   ${accelerate}
    Get Title
    Sleep    3s
    Page Should Contain             Welcome back, LF Optimisation.

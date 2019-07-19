*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${categories} =                             link=Categories
${customreports} =                          link=Custom Reports
${externallinks} =                          link=External Links
${keywords} =                               link=Keywords
${leadmanager} =                            xpath=//ul[@id="menu"]/li[3]/div/ul/li[5]
${loginactivity} =                          link=Login Activity
${referringsites} =                         link=Referring Sites
${assignmentreport} =                       link=Visitor Assignment Report
${statisticsreport} =                       link=Visitor Statistics
${watchlist} =                              link=Watch List
${pages} =                                  xpath=//ul[@id="menu"]/li[3]/div/ul/li[7]/span
${reportstatistics}                         xpath=//ul[@id="menu"]/li[3]/div/ul/li[9]/span
${reportstrigger} =                         xpath=//ul[@id="menu"]/li[3]/div/ul/li[10]/span
${reportvisitor} =                          xpath=//ul[@id="menu"]/li[3]/div/ul/li[13]/span

*** Keyword ***
Open categories page
    Wait Until Page Contains            Categories
    Click Element                       ${categories}
    Page Should Contain                 Categories
    title should be                     Categories
Open custom reports page
    Wait Until Page Contains            Custom Reports
    Click Element                       ${customreports}
    Page Should Contain                 My Custom Reports
    title should be                     Custom Reports
Open external link page
    Wait Until Page Contains            External Links
    Click Element                       ${externallinks}
    Page Should Contain                 External Links
    title should be                     External Links
Open keywords page
    Wait Until Page Contains            Keywords
    Click Element                       ${keywords}
    Page Should Contain                 Keywords
    title should be                     Keywords
Open Reports statistics page
    wait until page contains            Statistics
    mouse over                          ${reportstatistics}
    sleep  2s
Open reports - trigger reports page
    wait until page contains            Trigger Reports
    mouse over                          ${reportstrigger}
    sleep  2s
Open lead manager page
    Wait Until Page Contains            Lead Manager
    mouse over                          ${leadmanager}
Open login activity page
    Wait Until Page Contains            Login Activity
    Click Element                       ${loginactivity}
    Page Should Contain                 Login Activity
    title should be                     Login Activity

Open login referring sites page
    Wait Until Page Contains            Referring Sites
    sleep  3s
    Click Element                       ${referringsites}
    Page Should Contain                 Referring Sites
    title should be                     Referring Sites

Open visitor assignment report page
    Wait Until Page Contains            Visitor Assignment Report
    Click Element                       ${assignmentreport}
    Page Should Contain                 Visitor Assignment
    title should be                     Visitor Assignment


Open visitor statistics report page
    Wait Until Page Contains            Visitor Statistics
    Click Element                       ${statisticsreport}
    Page Should Contain                 Visitor Statistics
    title should be                     Visitor Statistics
Open Visitor Reports Page
    wait until page contains            Visitors
    mouse over                          ${reportvisitor}
    sleep  1s

Open watch list page
    Wait Until Page Contains            Watch List
    Click Element                       ${watchlist}
    Page Should Contain                 Watch List
    title should be                     Watch List

Hover to Pages page
    wait until page contains            Pages
    mouse over                          ${Pages}


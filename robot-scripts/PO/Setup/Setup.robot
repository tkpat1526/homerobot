*** Settings ***
Library  SeleniumLibrary




*** Variables ***
${datamanager}=                             xpath=//ul[@id="menu"]/li[6]/div/ul/li[5]

${accountsetting}=                          link=Account Settings
# xpath=//ul[@id="menu"]/li[7]/div/ul/li[1]

${customintegration}=                       xpath=//ul[@id="menu"]/li[6]/div/ul/li[3]
${conversiontracking}=                      link=Conversion Tracking
${desktopnotification}=                     link=Desktop Notifications
${emailreports1} =                            //ul[@id="menu"]/li[6]/div/ul/li[7]/span

${contactinformation}=                      xpath=//ul[@id="menu"]/li[6]/div/ul/li[2]


${integration}=                             xpath=//ul[@id="menu"]/li[6]/div/ul/li[8]

#  don't change to link locator  it will open MessengerMain page
${setupmessenger} =                         xpath=//ul[@id="menu"]/li[6]/div/ul/li[9]
${setupleadmanager} =                       xpath=//ul[@id="menu"]/li[6]/div/ul/li[10]/span

${reassignvisitors} =                       link=Reassign Visitors
${regions} =                                link=Regions
${statistics} =                             link=Statistics
${trackingcode} =                           link=Tracking Code
${triggerreports} =                         link=Trigger Reports
${setupuser} =                              xpath=//ul[@id="menu"]/li[6]/div/ul/li[16]/span

${visitorcategorisation} =                  link=Visitor Categorisation
*** Keywords ***
#  All the Pagesand sub pages in Setup with varification
Open account setting page
    Click Element                           ${accountsetting}
    Page Should Contain                     Account Settings
Open contact information page
    Wait Until Page Contains               Contact Information
    Mouse Over                             ${contactinformation}
    Sleep    2s

Open custom integration page
    Wait Until Element Is Visible         ${customintegration}
    Click Element                         ${customintegration}
    Page Should Contain                   Custom Integration
Open Conversion Tracking page
    Wait Until Element Is Visible         ${conversiontracking}
    Click Element                         ${conversiontracking}
    Page Should Contain                   Conversion Tracking
    Sleep    3s
Open data manager page
    page should contain                   Data Manager
    click element                         ${datamanager}
    Sleep    3s
Open desktopnotification page
    Wait Until Page Contains              Desktop Notifications
    Click Element                         ${desktopnotification}
    Page Should Contain                   Desktop Notifications App
Open Email Reports page
    Wait Until Page Contains              Email Reports
    Mouse Over                            ${emailreports1}
    Sleep    4s
Open integration page
    Wait Until Page Contains              Integration
    Mouse Over                            ${integration}
    Sleep    3s
Open custom messenger page
    mouse down                           ${setupmessenger}
    Click Element                        ${setupmessenger}
    Sleep    5s

    Page Should Contain                  Messenger Email Settings
Open Lead manager page
    Wait Until Element Is Visible       ${setupleadmanager}
    Mouse Over                          ${setupleadmanager}
    Sleep     1s
Open reassign visitors page
    Wait Until Page Contains            Reassign Visitors
    Click Element                       ${reassignvisitors}
    Page Should Contain                 Reassign Visitors   User:
Open regions page
    Wait Until Page Contains            Regions
    Click Element                       ${regions}
    Page Should Contain                 Region Setup   Add a new region
Open statistics page
    Wait Until Element Is Visible       ${statistics}
    Click Element                       ${statistics}
    Page Should Contain                 Statistics Setup  Create a New Statistics Report
Open tracking code page
    Wait Until Element Is Visible       ${trackingcode}
    Click Element                       ${trackingcode}
    Page Should Contain                 Tracking Code  Account Tracking Code
Open trigger report page
    Wait Until Element Is Visible       ${triggerreports}
    Click Element                       ${triggerreports}
    Page Should Contain                 Trigger Reports   Report name
Open user setup page
    Sleep    3s
    Mouse Over                          ${setupuser}
    Wait Until Page Contains            User Setup
    Sleep     3s
Open visitor categorisation page
    Wait Until Element Is Visible       ${visitorcategorisation}
    Click Element                       ${visitorcategorisation}
    Page Should Contain                 Visitor Categorisation   Existing Categories

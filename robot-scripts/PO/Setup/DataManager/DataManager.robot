*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${importdata}=                              link=Import Data
${managedata} =                             xpath=//ul[@id="menu"]/li[6]/div/ul/li[5]/div/ul/li[2]/a


*** Keywords ***
Open data manager pages-import data

    Page Should Contain Element           ${importdata}
    click element                         ${importdata}
    Page Should Contain                   Import Data
Open data manager pages-manage data
    Wait Until Element Is Visible         ${datamanager}
    click element                         ${datamanager}
    Wait Until Page Contains               Manage Data
    Sleep    3s
    click element                         ${managedata}
    Page Should Contain                   Manage Data
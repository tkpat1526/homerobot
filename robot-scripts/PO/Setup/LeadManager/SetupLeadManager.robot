*** Settings ***
Library  SeleniumLibrary




*** Variables ***
${lmimportdata} =                           link=Import Data
${lmmanagedata} =                           link=Manage Data
${leadssetup} =                             link=Leads Setup



*** Keywords ***
Open lead manager pages- importdata
    wait until page contains            Import Data
    Click Element                       ${lmimportdata}
    Page Should Contain                 Import Data  This allows you to upload your own (non-Lead Forensics generated) leads into Lead Manager
    title should be                     Lead Manager - Import Data
Open lead manager pages- managedata
    wait until page contains            Manage Data
    Click Element                       ${lmmanagedata}
    Page Should Contain                 Manage Data    Lead Manager Lists
    title should be                     Data Manager - Manage Data
Open lead manager pages- leadsetup
    wait until page contains            Leads Setup
    Click Element                       ${leadssetup}
    Page Should Contain                 Lead Manager - Settings       Actions
    title should be                      Lead Manager - Settings
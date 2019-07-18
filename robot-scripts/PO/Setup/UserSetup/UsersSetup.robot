*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${setupusersetup} =                         link=User Setup
${setupdisableuser} =                       link=Disabled Users


*** Keywords ***
Open user pages - user setup
    wait until page contains            User Setup
    Click Element                       ${setupusersetup}
    Page Should Contain                 User Setup   Edit User
    title should be                     User Setup
Open user pages - disabled users
    wait until page contains            Disabled Users
    Click Element                       ${setupdisableuser}
    Wait Until Page Contains            Disabled Users
    Page Should Contain                 Disabled Users   Reinstate
    title should be                     Disabled Users
*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${raisaticket} =     xpath=//ul[@id="menu"]/li[7]/div/ul/li[1]/a
${ideas} =           link=Ideas
${api} =             link=API



*** Keyword ***
Open raisaticket page
    Wait Until Page Contains         Raise a Ticket
    Click Element                    ${raisaticket}
    sleep  2s
    Page Should Contain              Support
    title should be                  Support
Open ideas page
    Wait Until Page Contains         Ideas
    Click Element                    ${ideas}
    sleep  2s
    Page Should Contain              Ideas
    title should be                  Ideas
Open API page
    Wait Until Page Contains         API
    Click Element                    ${api}
    sleep  2s
    Page Should Contain             Integration API Details
    title should be                 Integration API Details

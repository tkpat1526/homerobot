*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${emailvisitorlist}=                        xpath=//ul[@id="menu"]/li[6]/div/ul/li[7]/div/ul/li[1]
${emailkeyword}=                            xpath=//ul[@id="menu"]/li[6]/div/ul/li[7]/div/ul/li[2]/a


*** Keywords ***
Open email reports Pages-visitor list
    wait until page contains              Visitor List
    Click Element                         ${emailvisitorlist}
    Page Should Contain                   Email Reports - Visitor List
    title should be                       Email Reports - Visitor List
Open email reports Pages-keyword
    Wait Until Element Contains           ${emailkeyword}    Keyword
    Click Element                         ${emailkeyword}
    Page Should Contain                   Email Reports - Keyword
    title should be                       Email Reports - Keyword
*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${integrationsettings} =                    link=Integration Settings
# xpath=//ul[@id="menu"]/li[6]/div/ul/li[8]/div/ul/li[1]
${integrationsentvisits}=                   xpath=//ul[@id="menu"]/li[6]/div/ul/li[8]/div/ul/li[2]
${integrationcountrymap}=                   xpath=//ul[@id="menu"]/li[6]/div/ul/li[8]/div/ul/li[3]/a



*** Keywords ***
Open Integration pages-Integration settings
    wait until page contains             Integration Settings
    Click Element                        ${integrationsettings}
    Page Should Contain                  Integration Settings
    title should be                      Integration Settings
Open Integration pages-sentvisits
    Click Element                        ${integrationsentvisits}
    Page Should Contain                  Integration Visits
    Sleep    3s
    title should be                     Integration Sent Visits
Open Integration pages-country
    Wait Until Page Contains             Country/County Mappings
    Click Element                        ${integrationcountrymap}
    Page Should Contain                  Country / County Mappings
    title should be                      Country / County Mappings
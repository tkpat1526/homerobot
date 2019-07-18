*** Settings ***
Library  SeleniumLibrary


Library  DateTime
*** Variables ***
${clickontimeframe} =                xpath=//form[@id="DateFilter"]/div/div/div[3]/span/span/span[2]/span
${onrefresh} =                       xpath=//div[@id="inline-filters"]/div[1]/div[1]/a
${assertforselecteddays} =            xpath=//td[@id="pageHeaderRight"]/form/div/div/div[3]/span/span/span[1]
${yesterdayselect} =                 xpath=//ul[@id="StandardFilter_SelectedDateValue_listbox"]/li[2]
${firstcompanyvisit} =               xpath=//div[@id="grdvisitorlist"]/table/tbody/tr[1]/td[3]
${sixthcompanyvisit} =               xpath=//div[@id="grdvisitorlist"]/table/tbody/tr[6]/td[3]
${twodaytimeframeselect} =           xpath=//ul[@id="StandardFilter_SelectedDateValue_listbox"]/li[3]
${todayselect} =                     xpath=//ul[@id="StandardFilter_SelectedDateValue_listbox"]/li[1]
${inputcustomfrom} =                 id=StandardFilter_CustomDateFrom
${inputcutomto} =                    id=StandardFilter_CustomDateTo
${clickonviewbutton} =               xpath=//button[@id="btnChangeDate"]
${customdateselect} =                xpath=//ul[@id="StandardFilter_SelectedDateValue_listbox"]/li[12]
${clickondatetooltip}=               xpath=//div[@id="grdvisitorlist"]/table/thead/tr/th[3]

*** Keywords ***
# refresh button enable and disable both /////////////////////////////

user is able to click on auto refresh button
    ${toggle}=  get element attribute  ${onrefresh}  class
    run keyword if  '${toggle}' == 'left toggleButton conversionDisabled'     click on refresh button
                    sleep  5s
                    get element attribute  ${onrefresh}  class="left toggleButton conversionActive"
                    sleep  5s
                    click element  ${onrefresh}
                    ${toggle1}=  get element attribute  ${onrefresh}  class
                    get element attribute  ${onrefresh}  class="left toggleButton conversionDisabled"
click on refresh button
   click element                                    ${onrefresh}
#  all the time frame keyword to veryify days select with days shows in tooltip ///////////////
# Match visit - will match the visit with days select with company ///////////////////////////
click on Time frame option
    click element                                   ${clickontimeframe}
Select yesterday's time frame
    wait until element is visible                   ${yesterdayselect}
    sleep  3s
    click element                                   ${yesterdayselect}
    element text should be                          ${assertforselecteddays}        Yesterday
Match visit by yesterday's date
    ${CurrentDate}=        Get Current Date    result_format=%Y-%m-%d %H:%M:%S.%f
    ${yesterday}=          Subtract Time From Date  ${CurrentDate}   1 days   result_format=%d/%m/%Y
    Log                                             ${yesterday}
    sleep  2s
    ${visitdate} =         get text                 ${firstcompanyvisit}
    ${yesterdaystring}=    convert to string        ${visitdate}
    Log                                             ${yesterdaystring}
    should contain                                  ${yesterdaystring}      ${yesterday}
    ${visitdate1}=         get text                 ${sixthcompanyvisit}
    ${yesterdystring1}=    convert to string        ${visitdate1}
        should contain                              ${yesterdystring1}      ${yesterday}
Select two days time frame
    click element                                   ${clickontimeframe}
    wait until element is visible                   ${twodaytimeframeselect}
    sleep  3s
    click element                                   ${twodaytimeframeselect}
    sleep  2s
    element should contain                          ${assertforselecteddays}        2 Days Ago

Match visit by two day's date
    ${CurrentDate}=       Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${actualtwodaysdate}=  Subtract Time From Date  ${CurrentDate}   2 days   result_format=%d/%m/%Y
    Log                                             ${actualtwodaysdate}
    sleep  2s
    ${visitdate} =        get text                  ${firstcompanyvisit}
    ${twodays}=           convert to string         ${visitdate}
    Log                                             ${twodays}
    should contain                                  ${twodays}      ${actualtwodaysdate}
    ${vistdate1}=         get text                  ${sixthcompanyvisit}
    ${twodays1}=        convert to string           ${vistdate1}
    should contain                                  ${twodays1}     ${actualtwodaysdate}
Select today's time frame
    click element                                   ${clickontimeframe}
    sleep  3s
    wait until element is visible                   ${todayselect}
    click element                                   ${todayselect}
    sleep  2s
    element should contain                          ${assertforselecteddays}    Today
Match visits by today's date
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${actualtwodaysdate}=  Subtract Time From Date  ${CurrentDate}   0 days   result_format=%d/%m/%Y
    Log                                             ${actualtwodaysdate}
    sleep  2s
    ${visitdat} =       get text                    ${firstcompanyvisit}
    ${todays}=          convert to string           ${visitdat}
    Log                                             ${todays}
    should contain                                  ${todays}       ${actualtwodaysdate}
    ${vistdate1}=       get text                    ${sixthcompanyvisit}
    ${todays1}=         convert to string           ${vistdate1}
    should contain                                  ${todays1}      ${actualtwodaysdate}
user is able to select Custom time frame
    ${CurrentDate}=     Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${customefrom}=     Subtract Time From Date     ${CurrentDate}   10 days   result_format=%d/%m/%Y
    Log                                             ${customefrom}
    ${CurrentDate}=     Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${customeTo}=       Subtract Time From Date     ${CurrentDate}   2 days   result_format=%d/%m/%Y
    Log                                             ${customeTo}
    click element                                   ${clickontimeframe}
    Wait Until Element Is Visible                   ${customdateselect}
    sleep  3s
    click element                                   ${customdateselect}
    sleep  1s
    clear element text                              ${inputcustomfrom}
    input text                                      ${inputcustomfrom}   ${customefrom}
    clear element text                              ${inputcutomto}
    input text                                      ${inputcutomto}     ${customeTo}
    sleep  3s
    click element                                   ${clickonviewbutton}
    sleep   4s
    ${customefrom1}=       get value                ${inputcustomfrom}
    should be equal                                 ${customefrom}     ${customefrom1}
    ${customto}=         get value                  ${inputcutomto}
    should be equal                                 ${customto}        ${customeTo}
    sleep  3s
    click element                                   ${clickondatetooltip}
    sleep  5s
    ${visitdat} =           get text                ${firstcompanyvisit}
    ${Customefromdate}=     convert to string       ${visitdat}
    Log                                             ${Customefromdate}
    should contain                                  ${Customefromdate}   ${customefrom}
    sleep  3s
    click element                                   ${clickondatetooltip}
    sleep  5s
    ${vistdate1}=           get text                ${firstcompanyvisit}
    ${Customtodate}=  convert to string              ${vistdate1}
    Log                                             ${Customtodate}
    should contain                                  ${Customtodate}      ${customeTo}

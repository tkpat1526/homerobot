*** Settings ***
Library  SeleniumLibrary
Variables     ../Variable/Variables.py
Library   String

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
${clickondatetooltip}=               xpath=//div[@id="grdvisitorlist"]/table/thead/tr/th[3]/a
${uniquevisit} =                     id=tbUniqueVisitsOnly
${classicview} =                     css=[title='Classic'][data-viewmode='Classic']
${downarrow} =                       xpath=//div[@id="grdvisitorlist"]/table/tbody/tr[1]/td[19]
${imagenotpresent} =                 xpathe=//div[@id="grdvisitorlist"]/table/tbody/tr[1]/td[11]
${modernview} =                      css=[title='Modern']
${imagepresent} =                    xpath=//div[@id="grdvisitorlist"]/table/tbody/tr[2]/td[1]/div/div/div/div/div/a/img
${expandall} =                       id=tbAutoExpand
${inputtext} =                       id=SearchText
${opendrpdownsearch} =               xpath=//span[@style="width: 100px;"]/span
${selcecompany} =                    xpath=//ul[@id="SearchType_listbox"]/li[1]
${clickonsearch} =                   id=btnSearch
${getstring} =                       xpath=//div[@id="lfwrapper"]/span[1]
${getcompanyname} =                  xpath=//div[@id="grdvisitorlist"]/table/tbody/tr/td[4]/div/a
${novisitmessage} =                  xpath=//div[@id="grdvisitorlist"]/table/tbody/tr/td/b
${checkkeyword}                      xpath=//div[@id="grdvisitorlist"]/table/tbody/tr[1]/td[9]
${selcecategory} =                   xpath=//ul[@id="SearchType_listbox"]/li[2]
${pagesizetooltip} =                 xpath=//div[@id="grdvisitorlist_pager_top"]/div[2]/span[2]/span/span/span[2]
${selectpagesize} =                  xpath=//div[@id="grdvisitorlist_pager_bottom"]/div[2]/span[2]/span/select/option[2]
${hotscoretooltip} =                 css=[columnid='72']
${hotscoreassert} =                  xpath=//div[@id="grdvisitorlist"]/table/tbody/tr[1]/td[1]
${listmenu} =                        xpath=//div[@id="grdvisitorlist"]/table/tbody/tr[1]/td
${clickoncolumn} =

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
    ${CurrentDate}=       Get Current Date   result_format=%Y-%m-%d %H:%M:%S.%f
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
click on date tool tip
    click element                                   ${clickondatetooltip}
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
    ${customto1} =         get value                  ${inputcutomto}
#    log to console  ${customto1}
    should be equal                                 ${customto1}        ${customeTo}
    sleep  5s

    ${visitdat} =           get text                ${firstcompanyvisit}
    ${Customefromdate}=     convert to string       ${visitdat}
    log to console                                  ${Customefromdate}
    ${cutstring} =  should start with       ${Customefromdate}      17/07/2019
    #   should contain                                  ${Customefromdate}   ${customefrom}
    run keyword if  '${Customefromdate}' == '${cutstring}'   click on date tool tip
                     click element                                   ${clickondatetooltip}
                     sleep  5s
                     ${visitdat} =           get text                ${firstcompanyvisit}
                     ${Customefromdate}=     convert to string       ${visitdat}
                     log to console                                   ${Customefromdate}
                     should contain                                  ${Customefromdate}   ${customefrom}
    run keyword if  '${Customefromdate}' != '${cutstring}'   click on date tool tip
#                     click element                                   ${clickondatetooltip}
                      sleep  5s
                      ${vistdate1}=           get text                ${firstcompanyvisit}
                      ${Customtodate}=  convert to string             ${vistdate1}
                      log to console                                      ${Customtodate}
                      should contain   ${Customtodate}      ${customeTo}

click Unique Visits only Button
    click element       ${uniquevisit}
Disable and enable unique visits only button
    ${toggle1}=  get element attribute  ${uniquevisit}  class
    run keyword if  '${toggle1}' == 'left toggleButton conversionDisabled'     click Unique Visits only Button
                    sleep  5s
                    get element attribute  ${uniquevisit}  class="left toggleButton conversionActive"
                    sleep  5s
                    click element  ${uniquevisit}
                    ${toggle1}=  get element attribute  ${uniquevisit}  class
                    get element attribute  ${uniquevisit}  class="left toggleButton conversionDisabled"
Click on Classic View
    click element                               ${classicview}
    element should be visible                   ${downarrow}
    page should not contain image               ${imagenotpresent}
Click on Modern View
    click element                               ${modernview}
    element should be visible                   ${downarrow}
#    page should contain image                   ${imagepresent}
click on expand button
    click element                               ${expandall}
Disable and enable expand all button
    ${toggle3}=  get element attribute          ${expandall}  class
    run keyword if  '${toggle3}' == 'left toggleButton conversionDisabled'     click on expand button
                    sleep  5s
                    get element attribute       ${expandall}  class="left toggleButton conversionActive"
                    element should be visible                   ${downarrow}
                    page should contain image                   ${imagepresent}
                    sleep  5s
                    click element               ${expandall}
                    ${toggle1}=  get element attribute  ${expandall}  class
                    get element attribute       ${expandall}  class="left toggleButton conversionDisabled"
                    element should be visible                   ${downarrow}
                    page should not contain image               ${imagenotpresent}
Search visits by company name
    input text              ${inputtext}    ${searchcompanyname}
    click element           ${opendrpdownsearch}
    click element           ${selcecompany}
    click element           ${clickonsearch}
    ${string1}  get text   ${getstring}
    log to console  ${string1}
    run keyword if  '${string1}' == 'No items to display'   log to console  no error found
                     ${companymessage1}  get text  ${novisitmessage}
                     log to console  ${companymessage1}
                     element should contain  ${novisitmessage}  There are no visits to display. Please check your filters and try again.

    run keyword if  '${string1}' == 'No items to display'   Select two days time frame
                     input text              ${inputtext}    ${searchcompanyname1}
                     click element           ${clickonsearch}
                     sleep  2s
                     ${string2}  get text   ${getstring}
#                     log to console   ${string2}
                     page should contain      Showing
                     ${companyname}  get element attribute  ${getcompanyname}  title
                     log to console  ${companyname}
                     ${companyconvertostring}  convert to string  ${companyname}
                     ${companycapital}  convert to uppercase  ${companyconvertostring}
                     log to console  ${companycapital}
                     should contain   ${companycapital}  ${searchcompanyname1}
Search Visits by keyword
    input text              ${inputtext}    ${searchwrongkeyword}
    click element           ${opendrpdownsearch}
    click element           ${selcecategory}
    click element           ${clickonsearch}
    ${string1}  get text   ${getstring}
    log to console  ${string1}
    run keyword if  '${string1}' == 'No items to display'   log to console  no error found
                     ${companymessage1}  get text  ${novisitmessage}
                     log to console  ${companymessage1}
                     element should contain  ${novisitmessage}  There are no visits to display. Please check your filters and try again.
                     input text  ${inputtext}   ${searchbykeywords}
                     click element           ${opendrpdownsearch}
                     click element           ${selcecategory}
                     click element           ${clickonsearch}
                     element should contain   ${checkkeyword}   ${searchbykeywords}
click on columns

Click on page size
    click element               ${pagesizetooltip}
    sleep  4s
    wait until element is visible  ${selectpagesize}
    click element    ${selectpagesize}
click on hot score tooltip
    click element                   ${hotscoretooltip}
    ${listmenu}     get list items  ${listmenu}
    log to console  ${listmenu}
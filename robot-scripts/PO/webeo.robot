*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${categories} =     link=Categories


*** Keyword ***
Click on webeo page
      open browser  http://portal_dev.webeo.com/Admin/Account/Login?ReturnUrl=%2F   Chrome
      maximize browser window
      Set Selenium Speed    1seconds
      Input Text      id=Username     Avery
      Input Text      id=Password     Avery!123
      Click Element   id=btnSubmit
      Wait Until Element Is Visible  link=Preview
      Click Element    link=Preview
      Sleep    3s
      click Element   xpath=/html/body/div[2]/div/div[1]/div/div[1]/div[1]/span[2]/span/span[2]
      Sleep    2s
      click Element   xpath=//ul[@id="listOfCampaigns_listbox"]/li[1]
      click Element   xpath=/html/body/div[2]/div/div[1]/div/div[1]/div[2]/span[2]/span/span[2]/span
      click Element   xpath=//ul[@id="listOfExperiences_listbox"]/li[1]
      click Element    id=btnConfigPreview
      Wait Until Element Is Visible    id=showChangesSwitch
      Click Element    id=showChangesSwitch
      # Page Should Contain Element    xpath://a[@class=' lf-change lf-change-pending']

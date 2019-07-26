*** Settings ***
Library                 SeleniumLibrary
Resource         ../PO/Login.robot
Variables        ../Variable/Variables.py


*** Variables ***
${TYPE OF FILE}  png
*** Keywords ***
# ${beta} = need to chnge the variables for diff environment
Get DateTime
  ${date1}=  Get Current Date  result_format=%Y-%m-%d %H-%M-%S
  [Return]     ${date1}
Begin Web Test
    open browser  ${switch}  ${Browser}
    maximize browser window
    Set Selenium Speed    0.5 seconds
    Set Selenium Implicit Wait    2s
    Set Screenshot Directory    C:\\development\\robot-scripts\\UScrennshot
End Web Test
    close browser

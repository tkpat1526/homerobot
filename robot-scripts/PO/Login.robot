*** Settings ***
Library       SeleniumLibrary
Variables     ../Variable/Variables.py




*** Variables ***
${l_username}                          css=input#UserName
${l_password}                          id=Password
${l_loginbutton}                       id=btnSubmit
${error}                               id=pnlError
${l_verification}                      id=portal-name

*** Keywords ***
Enter valid login id and password
    wait until element is visible   ${l_username}
    input text                      ${l_username}    ${username}
    input text                      ${l_password}     ${password}
    wait until element is visible   ${l_loginbutton}
    click element                   ${l_loginbutton}
    element text should be          ${l_verification}  lfoptimise

Enter invalid login id and valid password
    wait until element is visible   ${l_username}
    input text                      ${l_username}    ${invalidusername}
    input text                      ${l_password}     ${password}
    wait until element is visible   ${l_loginbutton}
    click element                   ${l_loginbutton}
    element text should be          ${error}      Invalid login. If you have forgotten your password, please use the forgotten password link above.
Enter valid login id and invalid password
    wait until element is visible   ${l_username}
    input text                      ${l_username}    ${username}
    input text                      ${l_password}     ${invalidpassword}
    wait until element is visible   ${l_loginbutton}
    click element                   ${l_loginbutton}
    element text should be          ${error}      Invalid login. If you have forgotten your password, please use the forgotten password link above.

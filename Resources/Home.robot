*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://essayshark.com/

*** Keywords ***
Go to Essayshark
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Verify Essayshark Page is Loaded
    Wait Until Element Is Visible  id:id_esauth_myaccount_login_link
    ${Title}=  Get Title
    Log  ${Title}

Click My Account button
    Click Element  id:id_esauth_myaccount_login_link

Enter Customer Email in email field
    Input Text  xpath://*[@id='id_esauth_login_field']  evgeniy.onoprienko@uvoteam.com

Enter Customer Password in password field
    Input Text  xpath://*[@id='id_esauth_pwd_field']  bbbb1111

Submit Login
    Click Button  xpath://*[@id='id_esauth_login_button']
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Home.robot

*** Test Cases ***
Login user
    Go to Essayshark
    Verify Essayshark Page is Loaded
    Click My Account button
    Enter Customer Email in email field
    Enter Customer Password in password field
    Submit Login


#Login Writer
#    Open Browser  ${URL}  ${Browser}
#    Maximize Browser Window
#    Wait Until Element Is Visible  id:id_esauth_myaccount_login_link
#    User Login  krixusmanu@gmail.com  bbbb1111
#
#    #Close Browser
#
#*** Keywords ***
#User Login
#    [Arguments]  ${email}  ${password}
#    Click Element  id:id_esauth_myaccount_login_link
#    Input Text  xpath://*[@id='id_esauth_login_field']  ${email}
#    Input Text  xpath://*[@id='id_esauth_pwd_field']  ${password}
#    Click Button  xpath://*[@id='id_esauth_login_button']

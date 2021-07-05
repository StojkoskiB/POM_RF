*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Locators/Login.robot

*** Keywords ***
Login as existing user
    [Arguments]    ${loginusername_arg}    ${loginpassword_arg}
    Input Text    ${LoginEmail}    ${loginusername_arg}
    Input Password    ${LoginPassword}    ${loginpassword_arg}
    Click Element    ${LoginButton}
    Wait Until Element Is Visible    ${SignoutButton}

*** Settings ***
Library           SeleniumLibrary
Library           String

*** Test Cases ***
Register new user_002
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${EmailCreateField}
    Register New Account    janedoe@email.com    123456
    Wait Until Element Is Visible    ${SignoutButton}
    [Teardown]    Close Browser

Register new user with existing email_004
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${EmailCreateField}
    Register User with existing/invalid email    janedoe@email.com
    Wait Until Element Is Visible    ${CreateAccountError}
    [Teardown]    Close Browser

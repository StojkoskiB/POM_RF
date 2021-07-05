*** Settings ***
Library           SeleniumLibrary
Library           String

*** Test Cases ***
Login with valid email & password_002
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${LoginEmail}
    Login as existing user    johndoe@email.com    123456
    Wait Until Element Is Visible    ${SignoutButton}
    Wait Until Element Contains    ${MyAccountTitle}    My account
    [Teardown]    Close Browser

Login with valid email $ empty password
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${LoginEmail}
    Login as existing user    johndoe@email.com    ${EMPTY}
    Wait Until Element Is Visible    ${ErrorAlert}
    Wait Until Element Contains    ${ThereIs1Error}    There is 1 error
    [Teardown]    Close Browser

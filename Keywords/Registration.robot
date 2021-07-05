*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Locators/Registration.robot

*** Keywords ***
Register New Account
    [Arguments]    ${emailcreate_argument}    ${password_argument}
    Wait Until Element Is Visible    ${EmailCreateField}
    Input Text    ${EmailCreateField}    ${emailcreate_argument}
    Click Element    ${CreateAccountButton}
    Wait Until Element Is Visible    ${Gender_Mrs}
    Click Element    ${Gender_Mrs}
    Input Text    ${FirstNameField}    Name
    Input Text    ${LastNameField}    LastName
    Input Password    ${PasswordField}    ${password_argument}
    Input Text    ${AddressField}    Address1
    Input Text    ${CityField}    Carmel
    Select From List By Value    ${State}    1
    Input Text    ${ZipField}    12345
    Input Text    ${MobilePhoneField}    1234567890012
    Input Text    ${AddressAliasField}    My address Alias
    Click Element    ${RegisterButton}
    Wait Until Element Is Visible    ${SignoutButton}

Register User with existing/invalid email
    [Arguments]    ${emailcreate_argument}
    Wait Until Element Is Visible    ${EmailCreateField}
    Input Text    ${EmailCreateField}    ${emailcreate_argument}
    Click Element    ${CreateAccountButton}

*** Settings ***
Library           SeleniumLibrary
Library           String

*** Keywords ***
OpenWebSite
    Open Browser    http://automationpractice.com/index.php    chrome
    Maximize Browser Window

Open AuthenticationPage
    Wait Until Element Is Visible    ${SigninLinkButton}
    Click Element    ${SigninLinkButton}

Select Women-CasualDresses Subcategory
    Wait Until Element Is Visible    ${WomenCategory}
    Mouse Over    ${WomenCategory}
    Wait Until Element Is Visible    ${CasualDressesSubCategory}
    Click Element    ${CasualDressesSubCategory}

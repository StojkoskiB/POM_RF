*** Settings ***
Library           SeleniumLibrary
Library           String

*** Test Cases ***
Existing User Complete Order BankWire
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${LoginEmail}
    Login as existing user    test2test@mailtest.com    pass123456
    Wait Until Element Is Visible    ${HomeButton}
    Click Element    ${HomeButton}
    Add to cart
    CompleteOrder BankWire
    [Teardown]    Close Browser

Existing User Complete Order BankCheck
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${LoginEmail}
    Login as existing user    test2test@mailtest.com    pass123456
    Wait Until Element Is Visible    ${HomeButton}
    Click Element    ${HomeButton}
    Add to cart
    CompleteOrder BankCheck
    [Teardown]    Close Browser

Proceed to Checkout_User not signed in_001
    [Setup]    OpenWebSite
    Add to cart
    Wait Until Element Is Visible    ${CartButton}
    Click Element    ${CartButton}
    Wait Until Element Is Visible    ${ProceedToCheckout1}
    Click Element    ${ProceedToCheckout1}
    Wait Until Element Is Visible    ${AuthenticationPageCheckout}
    [Teardown]    Close Browser

Access cart without adding products_002
    [Setup]    OpenWebSite
    Wait Until Element Is Visible    ${APLogo}
    Click Element    ${CartButton}
    Wait Until Element Is Visible    ${CartSummaryTitle}
    Wait Until Element Contains    ${YourShoppinCartIsEmptyMessage}    Your shopping cart is empty.
    [Teardown]    Close Browser

Terms of Shipping Not Selected_018
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Login as existing user    test2test@mailtest.com    pass123456
    Wait Until Element Is Visible    ${HomeButton}
    Click Element    ${HomeButton}
    Add to cart
    Complete Order Terms Of Shipping Not Selected
    Wait Until Element Contains    ${MustAgreeToTermsOfShippingMessage}    You must agree to the terms of service before continuing.
    [Teardown]    Close Browser

*** Settings ***
Library           SeleniumLibrary
Library           String

*** Keywords ***
CompleteOrder BankWire
    Wait Until Element Is Visible    ${CartButton}
    Click Element    ${CartButton}
    Wait Until Element Is Visible    ${ProceedToCheckout1}
    Click Element    ${ProceedToCheckout1}
    Wait Until Element Is Visible    ${ProceedToCheckout3}
    Click Element    ${ProceedToCheckout3}
    sleep    10s
    Wait Until Element Is Visible    ${TermsOfShippingCheckbox}
    Select Checkbox    ${TermsOfShippingCheckbox}
    Click Element    ${ProceedToCheckout4}
    Wait Until Element Is Visible    ${BankWire}
    Click Element    ${BankWire}
    Wait Until Element Is Visible    ${ConfirmOrder}
    Click Element    ${ConfirmOrder}

Complete Order Terms Of Shipping Not Selected
    Wait Until Element Is Visible    ${CartButton}
    Click Element    ${CartButton}
    Wait Until Element Is Visible    ${ProceedToCheckout1}
    Click Element    ${ProceedToCheckout1}
    Wait Until Element Is Visible    ${ProceedToCheckout3}
    Click Element    ${ProceedToCheckout3}
    Wait Until Element Is Visible    ${ProceedToCheckout4}
    Click Element    ${ProceedToCheckout4}

CompleteOrder BankCheck
    Wait Until Element Is Visible    ${ShoppingCart}
    Click Element    ${ShoppingCart}
    Wait Until Element Is Visible    ${ProceedToCheckout1}
    Click Element    ${ProceedToCheckout1}
    Wait Until Element Is Visible    ${ProceedToCheckout3}
    Click Element    ${ProceedToCheckout3}
    sleep    10s
    Wait Until Element Is Visible    ${TermsOfShippingCheckbox}
    Select Checkbox    ${TermsOfShippingCheckbox}
    Click Element    ${ProceedToCheckout4}
    Wait Until Element Is Visible    ${ShoppingCart}
    Click Element    ${ShoppingCart}
    Wait Until Element Is Visible    ${BankCheck}
    Click Element    ${BankCheck}
    Wait Until Element Is Visible    ${ConfirmOrder}
    Click Element    ${ConfirmOrder}

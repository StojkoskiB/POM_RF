*** Settings ***
Library           SeleniumLibrary
Library           String

*** Keywords ***
Add to cart
    Wait Until Element Is Visible    ${Product_Blouse}
    Mouse Over    ${Product_Blouse}
    Wait Until Element Is Visible    ${Product_Blouse_More}
    Click Element    ${Product_Blouse_More}
    sleep    5s
    Wait Until Element Is Visible    ${AddToCart_Button}
    Click Element    ${AddToCart_Button}
    Wait Until Element Is Visible    ${ContinueShopping}
    Click Element    ${ContinueShopping}
    Wait Until Element Is Visible    ${HomeButton}
    Click Element    ${HomeButton}
    Wait Until Element Is Visible    ${Product_PrintedSummerDress}
    Mouse Over    ${Product_PrintedSummerDress}
    Wait Until Element Is Visible    ${Product_PrintedSummerDress_More}
    Click Element    ${Product_PrintedSummerDress_More}
    Wait Until Element Is Visible    ${AddToCart_Button}
    Click Element    ${AddToCart_Button}
    Wait Until Element Is Visible    ${ContinueShopping}
    Click Element    ${ContinueShopping}

Add PrintedDress To Cart
    Mouse Over    ${PrintedDress}
    Wait Until Element Is Visible    ${PrintedDress_MoreButton}
    Click Element    ${PrintedDress_MoreButton}
    Wait Until Element Is Visible    ${AddToCart_Button}
    Click Element    ${AddToCart_Button}
    Wait Until Element Is Visible    ${ProceedToCheckout}
    Click Element    ${ProceedToCheckout}

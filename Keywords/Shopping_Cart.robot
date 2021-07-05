*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Locators/Shopping_Cart.robot
Resource          ../Locators/Add_To_Cart.robot

*** Keywords ***
ClearShoppingCart
    Click Element    ${CartButton}
    Wait Until Element Is Visible    ${CartSummaryTitle}
    ${NumOfProducts}    Get Element Count    ${NumOfProductsInCart}
    FOR    ${i}    IN RANGE    0    ${NumOfProducts}
        Click Element    ${RemoveProduct1}
    END

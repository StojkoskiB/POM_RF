*** Settings ***
Library           SeleniumLibrary
Library           String

*** Test Cases ***
Clear Shopping Cart
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${LoginEmail}
    Login as existing user    test2test@mailtest.com    pass123456
    Wait Until Element Is Visible    ${HomeButton}
    Click Element    ${HomeButton}
    Add to cart
    ${CartQuantity}    Get Text    ${QuantityCart}
    IF    ${CartQuantity}>0
    ClearShoppingCart
    END
    [Teardown]    Close Browser

Add Products To Cart_001
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Login as existing user    test2test@mailtest.com    pass123456
    Select Women-CasualDresses Subcategory
    Add PrintedDress To Cart
    Wait Until Element Is Visible    ${CartSummaryTitle}
    ${CartQuantity}    Get Text    ${QuantityCart}
    IF    ${CartQuantity}>0
    Log    ${CartQuantity}
    END
    [Teardown]    Close Browser

Remove Product From Shopping Cart
    [Setup]    OpenWebSite
    Open AuthenticationPage
    Wait Until Element Is Visible    ${LoginEmail}
    Login as existing user    test2test@mail.test    pass123456
    Wait Until Element Is Visible    ${HomeButton}
    Click Element    ${HomeButton}
    Add to cart
    Click Element    ${CartButton}
    ${CartQuantity}    Get Text    ${QuantityCart}
    IF    ${CartQuantity}>0
    Log    ${CartQuantity}
    END
    Click Element    ${RemoveProduct1}
    sleep    2s
    ${CartQuantity}    Get Text    ${QuantityCart}
    IF    ${CartQuantity}>0
    Log    ${CartQuantity}
    END
    [Teardown]    Close Browser

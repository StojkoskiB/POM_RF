*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${MustAgreeToTermsOfShippingMessage}    //*[@id="order"]/div[2]/div/div/div/div/p
${ProceedToCheckout}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
${ProceedToCheckout1}    //*[@id="center_column"]/p[2]/a[1]
${ProceedToCheckout3}    //*[@id="center_column"]/form/p/button
${ProceedToCheckout4}    //*[@id="form"]/p/button
${TermsOfShippingCheckbox}    id:cgv
${BankWire}       //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
${ConfirmOrder}    //*[@id="cart_navigation"]/button
${BankCheck}      //*[@id="HOOK_PAYMENT"]/div[2]/div/p/a
${CartButton}     //*[@id="header"]/div[3]/div/div/div[3]/div/a/b
${CartSummaryTitle}    //*[@id="cart_title"]
${YourShoppinCartIsEmptyMessage}    //*[@id="center_column"]/p
${AuthenticationPageCheckout}    //*[@id="center_column"]/h1

*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${QuantityCart}    //*[@id="header"]/div[3]/div/div/div[3]/div/a/span[1]
${RemoveProduct1}    xpath=(/html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[7]/div/a)[1]
${CartButton}     //*[@id="header"]/div[3]/div/div/div[3]/div/a/b
${CartSummaryTitle}    //*[@id="cart_title"]
${YourShoppinCartIsEmptyMessage}    //*[@id="center_column"]/p
${NumOfProductsInCart}    /html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[7]/div/a

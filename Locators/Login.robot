*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${LoginEmail}     //*[@id="email"]
${LoginPassword}    //*[@id="passwd"]
${LoginButton}    //*[@id="SubmitLogin"]/span
${MyAccountTitle}    //*[@id="center_column"]/h1
${SignoutButton}    //*[@id="header"]/div[2]/div/div/nav/div[2]/a
${ThereIs1Error}    //*[@id="center_column"]/div[1]/p
${ErrorAlert}     //*[@id="center_column"]/div[1]

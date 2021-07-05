*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${URL}            http://automationpractice.com/index.php
${SigninLinkButton}    //*[@id="header"]/div[2]/div/div/nav/div[1]/a
${WomenCategory}    //*[@id="block_top_menu"]/ul/li[1]/a
${CasualDressesSubCategory}    //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[1]/a
${APLogo}         //*[@id="header_logo"]/a/img
${HomeButton}     //*[@id="columns"]/div[1]/a/i
${CartButton}     //*[@id="header"]/div[3]/div/div/div[3]/div/a/b

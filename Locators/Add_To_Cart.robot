*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${PrintedDress}    //*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
${PrintedDress_MoreButton}    //*[@id="center_column"]/ul/li/div/div[]/div[2]/a[2]/span
${PrintedDress_SizeList}    //*[@id="group_1"]
${WomenCategory}    //*[@id="block_top_menu"]/ul/li[1]/a
${CasualDressesSubCategory}    //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[1]/a
${Product_Blouse}    //*[@id="homefeatured"]/li[2]/div/div[1]/div/a[1]/img
${Product_Blouse_More}    //*[@id="homefeatured"]/li[2]/div/div[2]/div[2]/a[2]
${AddToCart_Button}    //*[@id="add_to_cart"]/button/span
${ContinueShopping}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span
${Product_PrintedSummerDress}    //*[@id="homefeatured"]/li[6]/div/div[1]/div/a[1]/img
${Product_PrintedSummerDress_More}    //*[@id="homefeatured"]/li[6]/div/div[2]/div[2]/a[2]
${ProceedToCheckout}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a

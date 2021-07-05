*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${EmailCreateField}    //*[@id="email_create"]
${CreateAccountButton}    //*[@id="SubmitCreate"]/span
${Gender_Mrs}     //*[@id="account-creation_form"]/div[1]/div[1]/div[2]/label
${FirstNameField}    //*[@id="customer_firstname"]
${LastNameField}    //*[@id="customer_lastname"]
${PasswordField}    //*[@id="passwd"]
${AddressField}    //*[@id="address1"]
${CityField}      //*[@id="city"]
${State}          //*[@id="id_state"]
${ZipField}       //*[@id="postcode"]
${MobilePhoneField}    //*[@id="phone_mobile"]
${AddressAliasField}    //*[@id="alias"]
${RegisterButton}    //*[@id="submitAccount"]/span
${SignoutButton}    //*[@id="header"]/div[2]/div/div/nav/div[2]/a
${CreateAccountError}    //*[@id="create_account_error"]

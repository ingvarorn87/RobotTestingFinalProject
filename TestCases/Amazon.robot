*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary




*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    #[Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Maximize Browser Window
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  montessori toys for toddlers
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "montessori toys for toddlers"
    Click Element  xpath=//span[@class='celwidget slot=SEARCH_RESULTS template=SEARCH_RESULTS widgetId=search-results index=0']//img[@class='s-image']
    Wait Until Page Contains  Back to results

    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Button  //a[contains(text(),'Proceed to checkout')]
    Wait Until Page Contains  Sign-In
    input text  name:ap_password   InputMyPassword
    Wait Until Page Contains  Your password is incorrect
    Close Browser

*** Keywords ***
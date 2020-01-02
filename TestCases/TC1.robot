*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
LoginTest
    #create webdriver  chrome    executable_path="C:\Users\Ingvar\Downloads\chromedriver_win32\chromedriver.exe"
    open browser     https://www.nopcommerce.com  chrome
    click element  xpath://span[@class='ico-caret sprite-image']
    click link  xpath://a[@class='ico-login']
    input text  id:Username   ingvarorn87gmail.com
    input text  id:Password   ingvar270787
    click element  xpath://div[@class='form-fields']//input[@class='btn blue-button']
    close browser
*** Keywords ***

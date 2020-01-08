*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com
*** Test Cases ***
LoginTest

    #create webdriver  chrome    executable_path="C:\Users\Ingvar\Downloads\chromedriver_win32\chromedriver.exe"
    open browser    ${url}      ${browser}

   # logintoApplication

    click element  xpath://span[@class='ico-caret sprite-image']
    click link  xpath://a[@class='ico-login']
    input text  id:Username   iggipop87
    input text  id:Password   ingvar270787
    click element  xpath://div[@class='form-fields']//input[@class='btn blue-button']

    close browser


*** Keywords ***
logintoApplication
    click element  xpath://span[@class='ico-caret sprite-image']
    click link  xpath://a[@class='ico-login']
    input text  id:Username   iggipop87
    input text  id:Password   ingvar270787
    click element  xpath://div[@class='form-fields']//input[@class='btn blue-button']
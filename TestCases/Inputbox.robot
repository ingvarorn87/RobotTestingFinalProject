*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com
*** Test Cases ***
TestingInputBox
    #create webdriver  chrome    executable_path="C:\Users\Ingvar\Downloads\chromedriver_win32\chromedriver.exe"
    open browser    ${url}      ${browser}

    title should be     Free and open-source eCommerce platform. ASP.NET based shopping cart. - nopCommerce
    click element  xpath://span[@class='ico-caret sprite-image']
    click link  xpath://a[@class='ico-login']
    ${"email_txt"}   set variable     id:Username

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}

    input text  ${"email_txt"}  RobReinier@nogo.com
    sleep   5
    clear element text  ${"email_txt"}
    sleep   3
    close browser


*** Keywords ***


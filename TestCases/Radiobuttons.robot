*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***
TestingInputBox
    #create webdriver  chrome    executable_path="C:\Users\Ingvar\Downloads\chromedriver_win32\chromedriver.exe"
    open browser    ${url}      ${browser}
    #set selenium speed   1seconds
    input text  name:firstname   Ingvar
    input text  name:lastname   Porarinsson
    #Radio buttons
    select radio button     sex     Female
    select radio button     sex     Male
    select radio button     exp     5

    input text  id:datepicker   23/02/2019
    #select from checkboxes
    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox   BlackTea
    select checkbox     tool

    select from list by label   continents   Australia
    sleep   1
    select from list by index   continents   6

    select from list by label   selenium_commands     Switch Commands
    select from list by label   selenium_commands     WebElements Commands
    unselect from list by label   selenium_commands     Switch Commands

    close browser


*** Keywords ***
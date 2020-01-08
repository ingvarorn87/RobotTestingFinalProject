*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***
TestingInputBox
    #Same As the radiobuttons but using keywords
    open browser    ${url}      ${browser}
    InputText
    SelectRadioButtons
    InputTextToDateBox
    SelectChecks
    SelectFromListBox1
    SelectFromListBox2
    close browser


*** Keywords ***
InputText
    input text  name:firstname   Ingvar
    input text  name:lastname   Porarinsson

SelectRadioButtons
    select radio button     sex     Female
    select radio button     sex     Male
    select radio button     exp     5
InputTextToDateBox
    input text  id:datepicker   23/02/2019
SelectFromListBox1
    select from list by label   continents   Australia
    select from list by index   continents   6
SelectFromListBox2
    select from list by label   selenium_commands     Switch Commands
    select from list by label   selenium_commands     WebElements Commands
    unselect from list by label   selenium_commands     Switch Commands
SelectChecks
    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox   BlackTea
    select checkbox     tool
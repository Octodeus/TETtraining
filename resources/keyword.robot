*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py

*** Variables ***
${SELENIUM TIMEOUT}    30 seconds
${URL}    https://www.google.com
${BROWSER}    chrome

*** Keywords ***
Open browser to front page
    Set Selenium Timeout    ${SELENIUM TIMEOUT}
    Open Browser    ${URL}    ${BROWSER}

Check that the google opens correctly
    Select frame    ${IFRAME}
    Wait Until Element Is Visible    ${BEFORE YOU CONTINUE HEADER}

Close browser under test
    Close Browser

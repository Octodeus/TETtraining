*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py

*** Variables ***
${SELENIUM TIMEOUT}    30 seconds
${URL}    https://parabank.parasoft.com/parabank/index.htm
${BROWSER}    chrome
${USERNAME}    default
${PASSWORD}    default


*** Keywords ***
Open browser to front page
    Set Selenium Timeout    ${SELENIUM TIMEOUT}
    Open Browser    ${URL}    ${BROWSER}

Open index page
    Wait Until Element Is Visible    ${PARABANK TITLE}

Close browser under test
    Close Browser

Wrong username
    Wait Until Element Is Visible    ${USERNAME INPUT}
    Input Text    ${USERNAME INPUT}    asdf
    Input Text    ${PASSWORD INPUT}    ${PASSWORD}
    Click Button    ${LOGIN BUTTON}
    Wait Until Element Is Visible    ${ERROR MESSAGE TEXT}
    Element Text Should Be    ${ERROR MESSAGE TEXT}    ${ERROR MESSAGE 1}

Wrong password
    Wait Until Element Is Visible    ${PASSWORD INPUT}
    Input Text    ${USERNAME INPUT}    ${USERNAME}
    Input Text    ${PASSWORD INPUT}    asdf
    Click Button    ${LOGIN BUTTON}
    Wait Until Element Is Visible    ${ERROR MESSAGE TEXT}
    Element Text Should Be    ${ERROR MESSAGE TEXT}    ${ERROR MESSAGE 1}

Wrong both
    Wait Until Element Is Visible    ${USERNAME INPUT}
    Wait Until Element Is Visible    ${PASSWORD INPUT}
    Input Text    ${USERNAME INPUT}    asdf
    Input Text    ${PASSWORD INPUT}    asdf
    Click Button    ${LOGIN BUTTON}
    Wait Until Element Is Visible    ${ERROR MESSAGE TEXT}
    Element Text Should Be    ${ERROR MESSAGE TEXT}    ${ERROR MESSAGE 1}

Login to ParaBank
    Wait Until Element Is Visible    ${USERNAME INPUT}
    Wait Until Element Is Visible    ${PASSWORD INPUT}
    Input Text    ${USERNAME INPUT}    ${USERNAME}
    Input Text    ${PASSWORD INPUT}    ${PASSWORD}
    Click Button    ${LOGIN BUTTON}
    Wait Until Element Is Visible    ${ACCOUNTS TITLE}
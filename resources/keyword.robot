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

Open new account
    Click Link    ${NEW ACCOUNT LINK}
    Wait Until Element Is Visible    ${NEW ACCOUNT TITLE}
    Click Element    ${ACCOUNT TYPE SELECTOR}
    Click Element    ${ACCOUNT SAVINGS OPTION}
    Wait Until Element Is Enabled    ${NEW ACCOUNT BUTTON}
    Click Button    ${NEW ACCOUNT BUTTON}
    Wait Until Element Is Visible    ${ACCOUNT OPENED TITLE}

Validate savings account creation
    ${ACCOUNT NUMBER} =    Get Text    ${NEW ACCOUNT ID}
    Set Global Variable    ${ACCOUNT NUMBER}
    Click link    ${ACCOUNTS OVERVIEW LINK}
    Wait Until Page Contains    ${ACCOUNT NUMBER}
    Click Link    ${ACCOUNT NUMBER}
    Wait Until Element Is Visible    ${ACCOUNT DETAILS TITLE}
    Wait Until Element Is Visible    ${ACCOUNT TYPE SAVINGS}

Request loan
    Click Link    ${LOAN LINK}
    Wait Until Element Is Visible    ${REQUEST LOAN TITLE}
    Input Text    ${LOAN AMOUNT INPUT}    300
    Input Text    ${DOWN PAYMENT INPUT}    100
    Click Button    ${APPLY LOAN BUTTON}
    Wait Until Element Is Visible    ${LOAN ACCEPTED TITLE}

Transfer funds
    Click Link    ${TRANSFER FUNDS LINK}
    Sleep    0.5s
    Wait Until Element Is Visible    ${TRANSFER FUNDS TITLE}
    Input Text    ${TRANSFER AMOUNT}    50
    Click Element    ${TRANSFER TO SELECTOR}
    Wait Until Element is Visible    //select[@id='toAccountId']/option[@value=${ACCOUNT NUMBER}]
    Click Element    //select[@id='toAccountId']/option[@value=${ACCOUNT NUMBER}]
    Click Button    ${TRANSFER BUTTON}
    Wait Until Element Is Visible    ${FUNDS TRANSFERED TITLE}
*** Settings ***
Resource    ../resources/keyword.robot
Suite Teardown    Close browser under test

*** Test Cases ***
Open ParaBank
    Open browser to front page
    Open index page

Login with wrong credentials
    Wrong username
    Wrong password
    Wrong both

Login with right credentials
    Login to ParaBank


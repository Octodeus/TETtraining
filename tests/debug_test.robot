*** Settings ***
Resource    ../resources/keyword.robot
Suite Teardown    Close browser when done

*** Test Cases ***
Open ParaBank
    Open browser to front page
    Open index page

Create a new banking customer
    Create a new banking customer
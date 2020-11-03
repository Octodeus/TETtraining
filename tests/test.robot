*** Settings ***
Resource    ../resources/keyword.robot
Suite Teardown    Close browser under test

*** Test Cases ***
TC1 Open browser and check that the google opens up correctly
    Open browser to front page
    Check that the google opens correctly


*** Settings ***
Library    AppiumLibrary
Library    ../common/utils/implicit-wait.py
Library    ../common/utils/mark-test-status.py
Library    ../common/utils/manage-local-testing.py

*** Variables ***
${USERNAME}=     mathewspereiraev_J3LT8Y
${ACCESSKEY}=    wg6pGosTL5r7DjzL8qoz
${REMOTE_URL}=  https://${USERNAME}:${ACCESSKEY}@hub-cloud.browserstack.com/wd/hub


*** Keywords ***
#Common test keywords
Close app
    close application

Add Implicit Wait
    [Arguments]    ${duration}
    IMPLICIT WAIT   ${duration}

Mark Test Status
    [Arguments]    ${status}    ${reason}
    TEST STATUS    ${status}    ${reason}

Start Local testing
    START LOCAL

Stop Local testing
    STOP LOCAL

#Android test keywords

#iOS test keywords

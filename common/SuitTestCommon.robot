*** Settings ***

Library     AppiumLibrary
Library     implicit-wait.py
Library     mark-test-status.py
Library     manage-local-testing.py
Resource        ../pages/CalculadoraPage.robot
Resource    ../parallel/SuiteOnePlus.robot
Resource    ../parallel/SuitePixel6.robot
Resource    ../parallel/SuiteS23Ultra.robot

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

### Dado
que estou na pagina da calculadora
    Wait Until Page Contains Element    ${btnMult}
    Wait Until Element Is Visible    ${btnMult}

### Quando
digito o numero 8 no primeiro campo
    Click Element    ${cmpFirstNumber}
    Input Text    ${cmpFirstNumber}    8
    Hide Keyboard

### E
digito o numero 2 no segundo campo
    Click Element    ${cmpSecondNumber}
    Input Text    ${cmpSecondNumber}    2
    Hide Keyboard

### E
clico no simbolo de subtração
    Click Element    ${btnSub}

### Entao
me e retornado o resultado 6
    Element Should Contain Text     ${txtResult}    6



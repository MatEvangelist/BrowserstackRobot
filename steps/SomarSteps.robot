*** Settings ***

Library     AppiumLibrary
Resource    ../config/MobileManager.robot
Resource    ../pages/CalculadoraPage.robot

*** Keywords ***
### Dado
Dado que estou na pagina da calculadora no device ${DEVICE_NAME}
#    Set Appium Timeout    15s
    Open app ${DEVICE_NAME}
    Wait Until Page Contains Element    ${btnMult}
    Wait Until Element Is Visible    ${btnMult}

### Quando
digito o numero ${NUMERO} no primeiro campo
    Click Element    ${cmpFirstNumber}
    Input Text    ${cmpFirstNumber}    ${NUMERO}
    Hide Keyboard

### E
digito o numero ${NUMERO} no segundo campo
    Click Element    ${cmpSecondNumber}
    Input Text    ${cmpSecondNumber}    ${NUMERO}
    Hide Keyboard

### E
clico no simbolo de soma
    Click Element    ${btnSum}

### Entao
me e retornado o resultado ${NUMERO}
    Element Should Contain Text    ${txtResult}    ${NUMERO}
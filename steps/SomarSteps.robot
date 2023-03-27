*** Settings ***

Library     AppiumLibrary
Resource    ../config/MobileManager.robot
Resource    ../pages/CalculadoraPage.robot

*** Keywords ***
### Dado
que estou na pagina da calculadora
    Set Appium Timeout    15s
    Open app
    Wait Until Page Contains Element    ${btnMult}
    Wait Until Element Is Visible    ${btnMult}

### Quando
digito o numero 5 no primeiro campo
    Click Element    ${cmpFirstNumber}
    Input Text    ${cmpFirstNumber}    5
    Hide Keyboard

### E
digito o numero 5 no segundo campo
    Click Element    ${cmpSecondNumber}
    Input Text    ${cmpSecondNumber}    5
    Hide Keyboard

### E
clico no simbolo de soma
    Click Element    ${btnSum}

### Entao
me e retornado o resultado 10
    Element Should Contain Text    ${txtResult}    10
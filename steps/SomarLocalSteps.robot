*** Settings ***

Library     AppiumLibrary
Resource    ../config/MobileManager.resource
Resource    ../pages/CalculadoraPage.resource

*** Variables ***

${first_number}                         0
${second_number}                        0

*** Keywords ***
### Dado
que estou na pagina da calculadora no device
    open application    app=${ANDROID_APP_LOCAL}  remote_url=${LOCAL_URL}
    ...                 deviceName=Pixel 6  platformName=${ANDROID_PLATFORM_NAME}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}  autoGrantPermissions=${True}
    IMPLICIT WAIT    15
    Wait Until Page Contains Element    ${btnMult}
    Wait Until Element Is Visible    ${btnMult}

### Quando
digito o numero ${n1} no primeiro campo
    ${first_number}=  set variable   ${n1}
    Click Element    ${cmpFirstNumber}
    Input Text    ${cmpFirstNumber}    ${n1}
    Hide Keyboard

### E
digito o numero ${n2} no segundo campo
    ${second_number}=  set variable   ${n2}
    Click Element    ${cmpSecondNumber}
    Input Text    ${cmpSecondNumber}    ${n2}
    Hide Keyboard

### E
clico no simbolo de soma
    Click Element    ${btnSum}

### Entao
me e retornado o resultado
    ${mysum}=    Set Variable    ${${first_number} + ${second_number}}
    ${string}=    Convert To String    ${mysum}
    Element Should Contain Text    ${txtResult}    ${string}
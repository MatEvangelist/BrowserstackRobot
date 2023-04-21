*** Settings ***

Library     AppiumLibrary
Resource    ../pages/CalculadoraPage.resource
Resource    ../config/MobileManager.resource
Library     ../common/utils/implicit-wait.py
Library     ../common/utils/mark-test-status.py
Library     ../common/utils/manage-local-testing.py

*** Variables ***
${LOCAL}                                ${FALSE}
${APP_ID}                               bs://89fb10fd6de53a347f0ee9f742eb53ec90ea2cc6
${ANDROID_AUTOMATION_NAME}              UIAutomator2
${ANDROID_APP_LOCAL}                    ${CURDIR}/../apk/calculadora.apk
${ANDROID_PLATFORM_NAME}                Android
${IOS_PLATFORM_NAME}                    IOS
${LOCAL_URL}                            http://localhost:4723/wd/hub
${USERNAME_BROWSERSTACK}=               mathewspereiraev_J3LT8Y
${ACCESSKEY_BROWSERSTACK}=              wg6pGosTL5r7DjzL8qoz
${REMOTE_URL}=  https://${USERNAME_BROWSERSTACK}:${ACCESSKEY_BROWSERSTACK}@hub-cloud.browserstack.com/wd/hub

*** Keywords ***

### DADO
Dado que estou na pagina da calculadora no device ${d}
    Set Test Variable  ${DEVICE}    ${d}
    inicia app  ${DEVICE}
    Wait Until Element Is Visible    ${btnMult}

### QUANDO
Quando digito o numero ${x}
    Set Test Variable  ${first_number}  ${x}
    Input Text    ${cmpFirstNumber}    ${first_number}

E somo com o numero ${y}
    Set Test Variable  ${second_number}  ${y}
    Input Text    ${cmpSecondNumber}    ${second_number}
    Click Element    ${btnSum}

E multiplico com o numero ${m}
    Set Test Variable  ${second_number}  ${m}
    Input Text    ${cmpSecondNumber}    ${second_number}
    Click Element    ${btnMult}

### ENTÃO
Entao o resultado obtido da soma é ${z}
    Set Test Variable  ${RESULTADO}    ${z}
    ${mysum}=    Set Test Variable    ${${first_number} + ${second_number}}
    AppiumLibrary.Element Should Contain Text    ${txtResult}    ${mysum}
    AppiumLibrary.Element Should Contain Text    ${txtResult}    ${RESULTADO}
    Capture Page Screenshot

### ENTÃO
Entao o resultado obtido da multiplicação é ${z}
    Set Test Variable  ${RESULTADO}    ${z}
    ${mymult}=    Set Test Variable    ${${first_number} * ${second_number}}
    AppiumLibrary.Element Should Contain Text    ${txtResult}    ${mymult}
    AppiumLibrary.Element Should Contain Text    ${txtResult}    ${RESULTADO}
    Capture Page Screenshot


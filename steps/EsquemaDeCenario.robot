*** Settings ***

Library     AppiumLibrary
Resource    ../pages/CalculadoraPage.robot
Resource    ../steps/EsquemaDeCenario.robot
Resource    ../config/MobileManager.robot
Library    ../common/utils/implicit-wait.py
Library    ../common/utils/mark-test-status.py
Library    ../common/utils/manage-local-testing.py

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

Dado que estou na pagina da calculadora no device ${d}
    set test variable  ${DEVICE}    ${d}
    inicia app  ${DEVICE}
    Wait Until Element Is Visible    ${btnMult}

Quando digito o numero ${x}
    set test variable  ${NUMERO_1}  ${x}
    Input Text    ${cmpFirstNumber}    ${NUMERO_1}

E somo com o numero ${y}
    set test variable  ${NUMERO_2}  ${y}
    Input Text    ${cmpSecondNumber}    ${NUMERO_2}
    Click Element    ${btnSum}

#E multiplico com o numero ${m}
#        set test variable  ${NUMERO_2}  ${m}
#        Input Text    ${cmpSecondNumber}    ${NUMERO_2}
#        Click Element    ${btnMult}

Entao o resultado obtido é ${z}
    set test variable  ${RESULTADO}    ${z}
    Element Should Contain Text    ${txtResult}    ${RESULTADO}
    Capture Page Screenshot
#    Quit Application
#    Close Application


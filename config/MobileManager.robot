*** Settings ***

Library     AppiumLibrary
Library    ../common/utils/implicit-wait.py

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
inicia app
    [Arguments]     ${DEVICE}
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}
    ...                 deviceName=${DEVICE}    name=Teste rOBOT
    ...                 build=browserstack-robot-framework  platformName=${ANDROID_PLATFORM_NAME}
    ...                 autoGrantPermissions=${True}
    IMPLICIT WAIT       15

fecha app
    Quit Application
    Close Application
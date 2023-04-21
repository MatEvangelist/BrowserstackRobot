*** Settings ***

Library     AppiumLibrary
Library    ../common/utils/implicit-wait.py

*** Variables ***
${LOCAL}                                ${FALSE}
${APP_ID}                               bs://2e4f21adce37955be8b6918d08eae384c26ba9f7
${ANDROID_AUTOMATION_NAME}              UIAutomator2
${ANDROID_APP_LOCAL}                    ${CURDIR}/../apk/calculadora.apk
${ANDROID_PLATFORM_NAME}                Android
${IOS_PLATFORM_NAME}                    IOS
${LOCAL_URL}                            http://localhost:4723/wd/hub
${USERNAME_BROWSERSTACK}=               mathewsevangelis_0KEu4c
${ACCESSKEY_BROWSERSTACK}=              JcHVxckD3ATNkypKrt9Y
${REMOTE_URL}=  https://${USERNAME_BROWSERSTACK}:${ACCESSKEY_BROWSERSTACK}@hub-cloud.browserstack.com/wd/hub

*** Keywords ***
inicia app
    [Arguments]         ${DEVICE}
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}
    ...                 deviceName=${DEVICE}    name=Teste Robot
    ...                 build=browserstack-robot-framework  platformName=${ANDROID_PLATFORM_NAME}
    ...                 autoGrantPermissions=${True}
    IMPLICIT WAIT       15

fecha app
    Quit Application
    Close Application
*** Settings ***

Library     AppiumLibrary
Resource    ../common/KeywordsFile.robot

*** Variables ***

${LOCAL}                                ${False}

${APP_ID}                               bs://89fb10fd6de53a347f0ee9f742eb53ec90ea2cc6
${ANDROID_AUTOMATION_NAME}              UIAutomator2
${ANDROID_APP_LOCAL}                          ${CURDIR}/../apk/calculadora.apk
${ANDROID_PLATFORM_NAME}                Android
${IOS_PLATFORM_NAME}                    IOS
${LOCAL_URL}                            http://localhost:4723/wd/hub

*** Keywords ***

Open app

    IF    $LOCAL == ${False}
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}
    ...                 deviceName=OnePlus 9  name=Teste pelo Robot Iphone
    ...                 build=browserstack-robot-framework  platformName=${ANDROID_PLATFORM_NAME}
    ...                 autoGrantPermissions=${True}
    IMPLICIT WAIT    15

    ELSE IF  $LOCAL == ${True}
    open application    app=${ANDROID_APP_LOCAL}  remote_url=${LOCAL_URL}
    ...                 deviceName=Pixel 6  platformName=${ANDROID_PLATFORM_NAME}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}  autoGrantPermissions=${True}
    IMPLICIT WAIT    15
    END
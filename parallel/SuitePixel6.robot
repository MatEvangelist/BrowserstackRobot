*** Settings ***

Library     AppiumLibrary
Resource    ../common/SuitTestCommon.robot
Resource    ../resources/BDDpt-br.robot
Test Teardown  Close app

*** Variables ***

${APP_ID}=     bs://89fb10fd6de53a347f0ee9f742eb53ec90ea2cc6

*** Test Cases ***
Cenário 02: Subtrair dois numeros corretamente
    [Tags]    ct-002
    Dado que estou com meu device aberto
    E que estou na pagina da calculadora
    Quando digito o numero 8 no primeiro campo
    E digito o numero 2 no segundo campo
    E clico no simbolo de subtração
    Entao me e retornado o resultado 6

*** Keywords ***
que estou com meu device aberto
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}
    ...                 deviceName=Google Pixel 6  name=Teste pelo Robot
    ...                 build=browserstack-robot-framework  platformName=Android
    IMPLICIT WAIT    15
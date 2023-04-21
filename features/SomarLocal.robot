*** Settings ***
Library             AppiumLibrary
Resource            ../steps/SomarLocalSteps.robot
Resource            ../resources/BDDpt-br.robot
Resource            ../config/MobileManager.resource

Test Teardown       Close Application
Suite Teardown      Close All Applications

*** Variables ***
${URL}            http://ururl

*** Test Cases ***

Cenário 01: Somar dois numeros corretamente
    [Tags]    ct-001
    Dado que estou na pagina da calculadora no device
    Quando digito o numero 5 no primeiro campo
    E digito o numero 5 no segundo campo
    E clico no simbolo de soma
    Entao me e retornado o resultado


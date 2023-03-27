*** Settings ***
Resource       ../steps/SomarSteps.robot
Resource       ../resources/BDDpt-br.robot
Resource    ../common/KeywordsFile.robot
Test Teardown  Close app

*** Test Cases ***

Cenário 01: Somar dois numeros corretamente
    [Tags]    ct-001
    Dado que estou na pagina da calculadora
    Quando digito o numero 5 no primeiro campo
    E digito o numero 5 no segundo campo
    E clico no simbolo de soma
    Entao me e retornado o resultado 10
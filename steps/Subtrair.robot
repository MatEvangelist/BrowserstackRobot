*** Settings ***

Resource       ../steps/SomarSteps.robot
Resource       ../resources/BDDpt-br.robot
Resource    ../common/SuitTestCommon.robot
Test Teardown  Close app

*** Test Cases ***
Cenário 02: Subtrair dois numeros corretamente
    [Tags]    ct-002
    Dado que estou na pagina da calculadora
    Quando digito o numero 8 no primeiro campo
    E digito o numero 5 no segundo campo
    E clico no simbolo de subtração
    Entao me e retornado o resultado 3
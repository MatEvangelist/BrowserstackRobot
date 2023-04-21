*** Settings ***
Library             AppiumLibrary
Resource            ../steps/EsquemaDeCenarioSteps.robot
Resource            ../resources/BDDpt-br.robot
Resource            ../config/MobileManager.resource
Test Teardown       fecha app

*** Keywords ***
Template Scenario Outline 02 - Multiplicação
    [Arguments]  ${DEVICE}   ${NUMERO_1}   ${NUMERO_2}   ${RESULTADO}
    Dado que estou na pagina da calculadora no device ${DEVICE}
    Quando digito o numero ${NUMERO_1}
    E multiplico com o numero ${NUMERO_2}
    Entao o resultado obtido da multiplicação é ${RESULTADO}

*** Test Case ***
Scenario Outline 02 - Realizar multiplicação de dois números
    [Template]  Template Scenario Outline 02 - Multiplicação
    #Examples:
    #DEVICE                     #NUMERO_1      #NUMERO_2        #RESULTADO
    Samsung Galaxy S23 Ultra            5              5                25
    Google Pixel 6                      6              6                36
    Xiaomi Redmi Note 11                7              7                49
    OnePlus 9                           8              8                64
    Samsung Galaxy S22 Plus             9              9                81
    Oppo A96                            10             10               100
    Samsung Galaxy Note 10 Plus         11             11               111
    OnePlus 7T                          12             12               144
*** Settings ***
Library             AppiumLibrary
Resource            ../steps/EsquemaDeCenarioSteps.robot
Resource            ../resources/BDDpt-br.robot
Resource            ../config/MobileManager.resource
Test Teardown       fecha app

*** Keywords ***
Template Scenario Outline 01 - Soma
    [Arguments]  ${DEVICE}   ${NUMERO_1}   ${NUMERO_2}   ${RESULTADO}
    Dado que estou na pagina da calculadora no device ${DEVICE}
    Quando digito o numero ${NUMERO_1}
    E somo com o numero ${NUMERO_2}
    Entao o resultado obtido da soma é ${RESULTADO}

*** Test Case ***
Scenario Outline 01 - Realizar soma de dois números
    [Template]  Template Scenario Outline 01 - Soma
    #Examples:
    #DEVICE                     #NUMERO_1      #NUMERO_2        #RESULTADO
    Samsung Galaxy S23 Ultra            5              5                10
    Google Pixel 6                      6              6                12
    Xiaomi Redmi Note 11                7              7                14
    OnePlus 9                           8              8                16
    Samsung Galaxy S22 Plus             9              9                18
    Oppo A96                            10             10               20
    Samsung Galaxy Note 10 Plus         11             11               22
    OnePlus 7T                          12             12               24
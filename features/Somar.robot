*** Settings ***
Resource            ../steps/SomarSteps.robot
Resource            ../resources/BDDpt-br.robot
Resource            ../config/MobileManager.robot
#Suite Setup         Open app
#Test Setup          Open app
Test Teardown       Reset app
Suite Teardown      Close app

*** Variables ***
${URL}            http://ururl
@{DEVICES_NAME}  =   ['Galaxy S23 Ultra', 'Pixel 6 Pro', 'Redmi Note 11'
...                 'Galaxy S22+', 'OnePlus 9']

#*** Test Cases ***
#FOR ${ELEMENT} IN  @{DEVICES_NAME}
#
##Cenário 01: Somar dois numeros corretamente
##    [Tags]    ct-001
#    Dado que estou na pagina da calculadora no device ${ELEMENT}
#    Quando digito o numero 5 no primeiro campo
#    E digito o numero 5 no segundo campo
#    E clico no simbolo de soma
#    Entao me e retornado o resultado 10
#END
#
#Cenário 02: Somar dois numeros corretamente
#    [Tags]    ct-002
#    Dado que estou na pagina da calculadora
#    Quando digito o numero 6 no primeiro campo
#    E digito o numero 6 no segundo campo
#    E clico no simbolo de soma
#    Entao me e retornado o resultado 12


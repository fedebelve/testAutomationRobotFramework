*** Settings ***
Resource    ../userinterface/LoginPage.robot
Resource    ../../global/config/Configuraciones.robot

*** Keywords ***
Ingresar Credenciales 
    [Arguments]    @{Admin}
    Ingresar Texto    ${txtUserName}    ${Admin}[0]
    Ingresar Texto    ${txtPassword}    ${Admin}[1]

Presionar Ingresar 
    Presionar Boton    ${btnIngresar}
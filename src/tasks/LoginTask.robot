*** Settings ***
Resource    ../actions/LoginActions.robot

*** Keywords ***
Usuario @{Admin} se autentica correctamente
    LoginActions.Ingresar Credenciales    @{Admin}
    LoginActions.Presionar Ingresar
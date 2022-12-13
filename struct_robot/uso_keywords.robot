*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${navegador}  Firefox
${pagina}  https://gmail.com/
${user}  federico.belvedere@gmail.com

*** Test Cases ***
Ingresar Cuenta De Correo
    abrir_correo
    ingresar_a_correo
    cerrar_correo

*** Keywords ***
ingresar_a_correo
    Input text  id:identifierId   ${user}
    Click element  xpath://*[@id="identifierNext"]/div/button/span
    Sleep   2s

abrir_correo
    Open Browser    ${pagina}   ${navegador}

cerrar_correo
    Close browser
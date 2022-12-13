*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${navegador}  Firefox
${pagina}  https://gmail.com/
${user}  federico.belvedere@gmail.com

*** Test Cases ***
Ingresar Cuenta De Correo
    Open Browser    ${pagina}   ${navegador}
    Input text  id:identifierId   ${user}
    Click element  xpath://*[@id="identifierNext"]/div/button/span
    Sleep   2s
    Input text  name:password   tupassword
    Close browser

*** Keywords ***

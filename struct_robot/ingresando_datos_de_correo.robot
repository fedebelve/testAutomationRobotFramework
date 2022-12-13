*** Settings ***

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Ingresar Cuenta De Correo
    Open Browser    https://gmail.com/   Firefox
    Input text  id:identifierId   federico.belvedere@gmail.com
    Click element  xpath://*[@id="identifierNext"]/div/button/span
    Sleep   5s
    Input text  name:password   tupassword
    Close browser

*** Keywords ***

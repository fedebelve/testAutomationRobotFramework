*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${navegador}  Firefox
${pagina}  https://www.htmlquick.com/es/reference/tags/select.html
${user}  federico.belvedere@gmail.com

*** Test Cases ***
Trabajando con input radio
    Open Browser    ${pagina}   ${navegador}
    Sleep  5s
    select from list by label  deporte   Tenis
    Sleep  2s
    Close Browser

*** Keywords ***
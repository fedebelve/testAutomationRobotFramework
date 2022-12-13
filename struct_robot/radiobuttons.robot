*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${navegador}  Firefox
${pagina}  https://www.htmlquick.com/es/reference/tags/input-radio.html
${user}  federico.belvedere@gmail.com

*** Test Cases ***
Trabajando con input radio
    Open Browser    ${pagina}   ${navegador}
    Sleep  5s
    select radio button  empleoactual    tiempocompleto
    Close Browser

*** Keywords ***

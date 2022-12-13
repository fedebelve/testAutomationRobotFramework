*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${navegador}  Firefox
${pagina}  https://www.htmlquick.com/es/reference/tags/input-checkbox.html
${user}  federico.belvedere@gmail.com

*** Test Cases ***
Trabajando con checkbox
    Open Browser    ${pagina}   ${navegador}
    Sleep  5s
    select checkbox  cb-autos
    Close Browser

*** Keywords ***
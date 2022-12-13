*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${navegador}  Firefox
${pagina}  https://robotframework.org/

*** Test Cases ***
Verificando titulo de la pagina
    Open Browser    ${pagina}   ${navegador}
    title should be  Robot Framework
    Close Browser

*** Keywords ***


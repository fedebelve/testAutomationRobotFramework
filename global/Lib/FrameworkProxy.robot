*** Settings ***

Library     SeleniumLibrary
Library     String

*** Keywords ***

Abrir Navegador
    [Arguments]     ${aURL}     ${aBrowser}
    Run Keyword If    '${aBrowser}' != 'Edge'    Open Browser    ${aURL}    ${aBrowser}
    Run Keyword If    '${aBrowser}' == 'Edge'    Open Browser    ${aURL}    ${aBrowser}

Ingresar Texto
    [Arguments]    ${aElement}    ${aText}
    Wait Until Element Is Enabled    ${aElement}    timeout=10
    Wait Until Element Is Visible    ${aElement}    timeout=10
    Set Focus To Element    ${aElement}
    Input Text    ${aElement}    ${aText}

Presionar Boton
    [Arguments]    ${aElement}
    Wait Until Element Is Enabled    ${aElement}    timeout=10
    Wait Until Element Is Visible    ${aElement}    timeout=10
    Set Focus To Element    ${aElement}
    Click Button    ${aElement}

Scrollear Hasta Elemento
    [Arguments]    ${aElement}
    Scroll Element Into View    ${aElement}
    Wait Until Element Is Visible    ${aElement}    timeout=5s
    Set Focus To Element    ${aElement}

Clickear Elemento
    [Arguments]    ${aElement}
    Wait Until Element Is Visible    ${aElement}    timeout=15
    Wait Until Element Is Enabled    ${aElement}    timeout=15
    Set Focus To Element    ${aElement}
    Click Element    ${aElement}
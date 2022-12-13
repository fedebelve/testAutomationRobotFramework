*** Settings ***

Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Buscar nintentendo en google
    Open Browser    https://google.com/   Chrome
    Input text  name:q   nintendo
    Sleep   2s
    Press Key   name:q   \\13 
    *** el 13 es el enter ***
    Sleep   2s
    close browser

*** Keywords ***

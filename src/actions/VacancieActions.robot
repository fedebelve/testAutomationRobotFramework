*** Settings ***
Resource    ../../global/Lib/FrameworkProxy.robot
Resource    ../userinterface/VacanciePage.robot

*** Keywords ***

Ingresar a Add Vacancie
    Presionar Boton    ${btnAdd}
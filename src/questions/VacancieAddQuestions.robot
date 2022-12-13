*** Settings ***

Resource    ../../global/Lib/FrameworkProxy.robot
Resource    ../userinterface/VacanciePage.robot
Resource    ../userinterface/VacancieAddPage.robot

*** Keywords ***
Se muestra el mensaje de vacante creada correctamente
    Wait Until Element Is Visible    ${msjStatus}
    Element Should Contain           ${msjStatus}    Successfully Saved
    Capture Page Screenshot
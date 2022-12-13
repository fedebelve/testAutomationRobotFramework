*** Settings ***
Resource    ../../global/Lib/FrameworkProxy.robot
Resource    ../userinterface/VacancieAddPage.robot

*** Keywords ***

Registrar Vacante
    [Arguments]    ${JobTitle}    ${Name}    ${Manager}    ${NumberPositions}    ${Description}    ${Active}
    Clickear Elemento    ${ddlJobTitle}
    Clickear Elemento    ${ddlJobTitleSeleccionado}
    #Select From List By Label    ${ddlJobTitle}    ${JobTitle}
    Clickear Elemento    ${txtVacancyName}
    Clickear Elemento    ${txtVacancyNameSeleccionado}
    Ingresar Texto    ${txtVacancyName}    ${Name}
    Ingresar Texto    ${txtHiringManager}    ${Manager}
    Ingresar Texto    ${txtNumerPosition}    ${NumberPositions}
    Ingresar Texto    ${txtDescription}    ${Description}
    IF  "${Active}" == "NO"
        Clickear Elemento    ${chkStatus}
    END
    
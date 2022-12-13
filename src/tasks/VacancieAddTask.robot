*** Settings ***
Resource    ../actions/VacancieActions.robot
Resource    ../actions/VacancyAddActions.robot
Resource    ../actions/MenuActions.robot

*** Keywords ***
Agregar la vacante ${JobTitle} de trabajo con los datos: ${Name}, ${Manager}, ${Number}, ${Description}, ${Active}
    MenuActions.Ingresar a Recruitment -> Vacancies
    #VacancieActions.Ingresar a Add Vacancie
    VacancyAddActions.Registrar Vacante    ${JobTitle}    ${Name}    ${Manager}    ${Number}    ${Description}    ${Active}
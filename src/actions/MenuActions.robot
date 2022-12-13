*** Settings ***
Resource    ../../global/Lib/FrameworkProxy.robot
Resource    ../userinterface/Menu.robot

*** Keywords ***

Ingresar a Recruitment -> Vacancies
    Clickear Elemento    ${menuRecruitment}
    #Clickear Elemento    ${smenuVacancy}
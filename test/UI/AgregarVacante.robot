*** Settings ***
Resource    ../../global/Lib/FrameworkProxy.robot
Resource    ../../global/config/Variables.robot
Resource    ../../global/config/Configuraciones.robot
Resource    ../../src/tasks/LoginTask.robot
Resource    ../../src/tasks/VacancieAddTask.robot
Resource    ../../src/questions/VacancieAddQuestions.robot


Suite Setup    Setup Navegador
Suite Teardown    Close Browser

*** Variables ***
${JobTitle}        QA Lead
${Name}            Quality Engineer Lead
${Manager}         Peter Mac Anderson
${Number}          5
${Description}     Prueba Test
${Active}          NO


*** Test Cases ***
Agregar Nueva Vacante de Trabajo
    Usuario @{Admin} se autentica correctamente
    Sleep  3s
    Agregar la vacante ${JobTitle} de trabajo con los datos: ${Name}, ${Manager}, ${Number}, ${Description}, ${Active}
    Se muestra el mensaje de vacante creada correctamente

    # *** tengo 2 tareas que tengo que programar y la última, una question ***
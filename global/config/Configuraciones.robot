*** Settings ***

Resource        ../../global/Lib/FrameworkProxy.robot
Resource        ../../global/config/Variables.robot

**** Keywords ****
Setup Navegador
    Set Selenium Speed    0.10
    Abrir Navegador       ${gWebUrl}    ${gBrowser}
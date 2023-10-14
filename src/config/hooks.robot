*** Settings ***
Documentation    keywords base de configuração para automação
Resource         ../config/main.resource

*** Variables ***
${CHROME}    chrome
${URL}       https://demo.nopcommerce.com/
${LOGDIR}       ${EXECDIR}/logs
${HORA}      hr
${MINUTOS}   m
*** Keywords ***
Captura da tela
    ${CURRENT_TIME}    Get Current Date    result_format=%Y-%m-%d_%H${HORA}-%M${MINUTOS}
    Capture Page Screenshot    ${LOGDIR}/logs/screenshot_${CURRENT_TIME}.png
    
Abrir navegador 
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window   

Fechar navegador
    Sleep    2
    Captura da tela    
    Close Browser


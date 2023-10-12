*** Settings ***
Documentation    keywords base de configuração para automação
Resource    ../config/main.resource

*** Variables ***
${CHROME}    chrome
${URL}       https://demo.nopcommerce.com/

*** Keywords ***
Abrir navegador 
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window   

Fechar navegador
    Sleep    2
    Capture Page Screenshot    ${EXECDIR}/tests/logs/pg_registro/evidencia-screenshot.png    
    Close Browser
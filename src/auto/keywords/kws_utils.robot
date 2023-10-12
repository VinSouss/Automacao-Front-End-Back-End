*** Settings ***
Documentation        Keyword de utilidade do projeto
Resource             ../../../src/config/main.resource

*** Keywords ***
Ir para tela de registro
    Title Should Be                  ${pg_home.title}
    Wait Until Element Is Visible    css=${pg_Home.btn_register}    ${TIMEOUT.MINIMAL}
    Click Element                    css=${pg_Home.btn_register}  

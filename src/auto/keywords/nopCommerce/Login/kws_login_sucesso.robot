*** Settings ***
Documentation    Keywords da tela de registro do nopCommerce

Resource         ../../../../config/main.resource

*** Keywords ***

que o usuario esteja na tela de login
    Wait Until Element Is Visible     css=${pg_Home.btn_login}           ${TIMEOUT.MINIMAL}
    Click Element                     css=${pg_Home.btn_login}
    Title Should Be                   ${pg_Login.title}
    Element Text Should Be            css=${pg_Login.pageTitle}          Welcome, Please Sign In!
preenche os campos 
    Wait Until Element Is Visible     css=${pg_Login.input_email}        ${TIMEOUT.MINIMAL}
    Input Text                        css=${pg_Login.input_email}        ${USER}
    Wait Until Element Is Visible     css=${pg_Login.input_password}     ${TIMEOUT.MINIMAL}
    Input Text                        css=${pg_Login.input_password}     ${PASSWORD}

clica no botão de login
    Wait Until Element Is Visible     css=${pg_Login.btn_login}           ${TIMEOUT.MINIMAL}
    Click Button                      css=${pg_Login.btn_login}           
    Cadastro expirado
o usuario deve realizar login no sistema    
    Wait Until Element Is Visible     css=${pg_Home.logo_nopCommerce}     ${TIMEOUT.MINIMAL}
    Page Should Contain Element       css=${pg_Home.my_account}
    

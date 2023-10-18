*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.

Resource           ../../../../src/config/main.resource

Suite Setup        Abrir navegador
Suite Teardown     Fechar navegador


*** Test Cases ***
Cenário 1: [Login] Login com sucesso.
    [Tags]    login_sucesso
    Dado  que o usuario esteja na tela de login
    Quando  preenche os campos 
    E  clica no botão de login
    Então  o usuario deve realizar login no sistema    
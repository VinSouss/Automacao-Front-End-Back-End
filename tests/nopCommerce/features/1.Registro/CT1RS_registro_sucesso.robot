*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.

Resource           ../../../../src/config/main.resource

Suite Setup        Abrir navegador
Suite Teardown     Fechar navegador


*** Test Cases ***
Cenário 1: [Registro] Registro com sucesso.
    [Tags]    register_sucess
    Dado  que o usuario esteja na tela de registro
    Quando  preenche os campos obrigatórios
    E  clica no botão de registro
    Então  o sitema deve exibir uma mensagem que o registro foi realizado sucesso.      
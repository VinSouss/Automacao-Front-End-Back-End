*** Settings ***
Documentation     Cenários da tela de Registro da nopCommerce.

Resource          ../../../../src/config/main.resource

Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador


*** Test Cases ***
Cenário 1: [Registro] Registro sem preencher campos obrigatórios
    [Tags]    register_inv
    Dado  que o usuario esteja na tela de registro
    Quando  clica no botão de registro
    Então  o sitema deve exibir uma mensagem informando que os campos são obrigatórios.      
*** Settings ***
Documentation     Cenários da tela de Registro da nopCommerce.

Resource          ../../../../src/config/main.resource

Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador


*** Test Cases ***
Cenário 1: [Registro] Registro com Confirmação de senha invalida
    [Tags]    confirmPassword_inv
    Dado  que o usuario esteja na tela de registro
    Quando  preenche os campos com a confirmação de senha invalida
    E  clica no botão de registro
    Então  o sitema deve exibir uma mensagem informando que a senha e a confirmação da senha não são iguais.
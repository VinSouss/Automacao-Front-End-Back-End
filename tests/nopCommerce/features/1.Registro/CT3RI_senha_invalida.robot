*** Settings ***
Documentation     Cenários da tela de Registro da nopCommerce.

Resource          ../../../../src/config/main.resource

Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador


*** Test Cases ***
Cenário 1: [Registro] Registro com senha inválida.
    [Tags]    password_inv
    Dado  que o usuario esteja na tela de registro
    Quando  preenche os campos com senha inválida 
    E  clica no botão de registro
    Então  o sitema deve exibir uma mensagem informando que a senha deve conter pelo menos 6 caracteres.      
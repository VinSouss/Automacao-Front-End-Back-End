*** Settings ***
Documentation    Cenários da tela de Registro da nopCommerce

Resource         ../../src/config/main.resource

Suite Setup
Suite Teardown


*** Test Cases ***
Cenário 1: [Registro] Registro com sucesso.
    Dado   
    Quando
    Então 
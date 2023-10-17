*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.
Resource           ../../src/config/main.resource



*** Test Cases ***
Cenário 1: [Consultar] Consultar os dados de um novo usuário
    [Tags]    consulta_sucess
    Dado  uma API de cadastro de usuários
    Quando  realizo uma consulta GET para a rota "//serverest.dev/usuarios/_id"  
    Então  a resposta deve conter as informações do usuário 

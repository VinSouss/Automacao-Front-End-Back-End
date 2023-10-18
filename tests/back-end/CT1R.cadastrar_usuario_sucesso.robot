*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.
Resource           ../../src/config/main.resource



*** Test Cases ***
Cenário 1: [Cadastro] Cadastrar usuário.
    [Tags]    cadastro_sucess
    Dado  uma API de cadastro de usuários
    Quando  realizo uma solicitação POST para a rota "//serverest.dev/usuarios"
    E  envio os dados 
    Então  a resposta deve conter uma messagem "Cadastro Realizado com sucesso"


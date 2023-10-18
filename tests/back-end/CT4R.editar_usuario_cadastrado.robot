*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.
Resource           ../../src/config/main.resource



*** Test Cases ***
Cenário 1: [Editar] Editar cadastro de usuário
    [Tags]    edit_sucess
    Dado  uma API de cadastro de usuários
    Quando  realizo uma edição PUT para a rota "//serverest.dev/usuarios/_id"    
    Então  a resposta deve conter uma mensagem "Registro alterado com sucesso"
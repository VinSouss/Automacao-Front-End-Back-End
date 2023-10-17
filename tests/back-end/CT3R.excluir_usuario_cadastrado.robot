*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.
Resource           ../../src/config/main.resource



*** Test Cases ***
Cenário 1: [Excluir] Excluir cadastro de usuário.
    [Tags]    exclusao_sucess
    Dado  uma API de cadastro de usuários
    Quando  realizo uma exclusão DELETE para a rota "//serverest.dev/usuarios/_id"   
    Então  a resposta deve conter uma mensagem "Registro excluído com sucesso"
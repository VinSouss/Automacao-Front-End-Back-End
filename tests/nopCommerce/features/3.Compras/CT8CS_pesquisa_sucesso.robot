*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.

Resource           ../../../../src/config/main.resource

Suite Setup        Abrir navegador
Suite Teardown     Fechar navegador


*** Test Cases ***
Cenário 1: [Compras] Realizar uma pesquisa de produto com sucesso.
    [Tags]    pesquisa_sucesso
    Dado  que estou na home page do nopCommerce
    Quando  pesquisar pelo produto "Desktop"
    Então  o sistema deve redirecionar o usuário a página pesquisada
    E  os produtos da linha Desktop deve ser mostrado
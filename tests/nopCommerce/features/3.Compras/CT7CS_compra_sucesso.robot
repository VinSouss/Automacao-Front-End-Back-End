*** Settings ***
Documentation      Cenários da tela de Registro da nopCommerce.

Resource           ../../../../src/config/main.resource

Suite Setup        Abrir navegador
Suite Teardown     Fechar navegador


*** Test Cases ***
Cenário 1: [Compras] Realizar uma compra com sucesso.
    [Tags]    login_sucesso
    Dado  que o usuario esteja na página de compras
    Quando  adiciona o produto "Digital Storm VANQUISH 3 Custom Performance PC" ao carrinho
    E  insere as informações de pagamento
    E  clica no botão "finalizar Compra"
    Então  o sistema informa ao usuário uma mensagem de "Compra bem-sucedida"  
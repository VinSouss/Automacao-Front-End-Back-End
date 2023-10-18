*** Settings ***
Documentation    Keywords da tela de registro do nopCommerce

Resource         ../../../../config/main.resource

*** Keywords ***
que o usuario esteja na página de compras
    Usuário Logado
    Pesquisa Produto
adiciona o produto "${PRODUTO_NAME}" ao carrinho
    Page Should Contain                                          ${PRODUTO_NAME}
    Wait Until Element Is Visible                                xpath=${pg_Pesquisa.btn_add_car}
    Click Element                                                xpath=${pg_Pesquisa.btn_add_car}
    Wait Until Element Is Visible                                css=${pg_Pesquisa.btn_addToCar}
    Click Element                                                css=${pg_Pesquisa.btn_addToCar}
    Wait Until Element Is Visible                                css=${pg_Pesquisa.message}
    Click Element                                                xpath=${pg_Pesquisa.link_shopping}
    Wait Until Element Is Visible                                css=${pg_Compras.checkbox_term}
    Select Checkbox                                              css=${pg_Compras.checkbox_term}
    Checkbox Should Be Selected                                  css=${pg_Compras.checkbox_term}
    Wait Until Element Is Visible                                css=${pg_Compras.btn_checkout}
    Click Element                                                css=${pg_Compras.btn_checkout}
    Adicionar Endereço
    
    
insere as informações de pagamento    
        Wait Until Element Is Visible                            css=${pg_Checkout.methods_shipping}             ${TIMEOUT.MINIMAL}
        Select Radio Button                                      shippingoption                                  Next Day Air___Shipping.FixedByWeightByTotal
        Radio Button Should Be Set To                            shippingoption                                  Next Day Air___Shipping.FixedByWeightByTotal
        Wait Until Element Is Visible                            css=${pg_Checkout.btn_continue_shipping}        ${TIMEOUT.MINIMAL}
        Click Button                                             css=${pg_Checkout.btn_continue_shipping}
        Wait Until Element Is Visible                            css=${pg_Checkout.methods_payment}              ${TIMEOUT.MINIMAL}
        Select Radio Button                                      paymentmethod                                   Payments.CheckMoneyOrder
        Radio Button Should Be Set To                            paymentmethod                                   Payments.CheckMoneyOrder
        Wait Until Element Is Visible                            css=${pg_Checkout.btn_continue_payment}         ${TIMEOUT.MINIMAL}
        Click Button                                             css=${pg_Checkout.btn_continue_payment}
        Wait Until Element Is Visible                            css=${pg_Checkout.info}                         ${TIMEOUT.MINIMAL}
        Page Should Contain Element                              css=${pg_Checkout.info}
        Click Button                                             css=${pg_Checkout.btn_continue_info}
        
clica no botão "finalizar Compra"
        Wait Until Element Is Visible                            css=${pg_Checkout.btn_continue_confirmOrder}    ${TIMEOUT.CURTO}
        Click Button                                             css=${pg_Checkout.btn_continue_confirmOrder}
    
o sistema informa ao usuário uma mensagem de "Compra bem-sucedida" 
        Wait Until Element Is Visible                            xpath=${pg_Checkout.messsage_sucess}            ${TIMEOUT.MINIMAL}
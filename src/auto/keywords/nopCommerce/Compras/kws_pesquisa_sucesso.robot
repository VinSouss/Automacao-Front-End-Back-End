*** Settings ***
Documentation    Keywords da tela de registro do nopCommerce

Resource         ../../../../config/main.resource

*** Keywords ***
que estou na home page do nopCommerce
    Title Should Be                   ${pg_home.title}
pesquisar pelo produto "${PRODUTO}"
    Wait Until Element Is Visible    css=${pg_Home.input_search}    ${TIMEOUT.MINIMAL}
    Input Text                       css=${pg_Home.input_search}    ${PRODUTO}
    Wait Until Element Is Visible    css=${pg_Home.btn_search}      ${TIMEOUT.MINIMAL}
    Click Button                     css=${pg_Home.btn_search}

o sistema deve redirecionar o usuário a página pesquisada
    Title Should Be                  ${pg_Pesquisa.title}           ${TIMEOUT.MINIMAL}
os produtos da linha Desktop deve ser mostrado
    Page Should Contain Element     css=${pg_Pesquisa.list_products}
*** Settings ***
Documentation    Todos os imports e libraries do projeto

Library          Collections
Library          DateTime
Library          DebugLibrary
Library          String
Library          SeleniumLibrary
Library          RequestsLibrary

Variables        ../config/hooks.yaml

Resource         ../utils/Comum.robot
Resource         ../utils/BDDpt-BR.robot
Resource         ../config/hooks.robot

Resource         ../../src/API/keywords/requests_responses/kws_cadastrar_usuario_sucesso.robot
Resource         ../../src/API/keywords/requests_responses/kws_consultar_dados_novo_usuario.robot
Resource         ../../src/API/keywords/requests_responses/kws_editar_usuario_cadastrado.robot
Resource         ../../src/API/keywords/requests_responses/kws_excluir_usuario_cadastrado.robot

Resource         ../../src/API/keywords/kws_utilsAPI.robot


Resource        ../../src/auto/keywords/kws_utils.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_registro_sucesso.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_campos_obrigatorios_vazios.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_email_invalido.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_senha_invalida.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_confirmacao_senha_invalida.robot
Resource         ../../src/auto/keywords/nopCommerce/Login/kws_login_sucesso.robot
Resource         ../../src/auto/keywords/nopCommerce/Compras/kws_compra_sucesso.robot
Resource         ../../src/auto/keywords/nopCommerce/Compras/kws_pesquisa_sucesso.robot





#Objects
Resource         ../auto/objects/home_obj.resource
Resource         ../auto/objects/registro_obj.resource
Resource         ../auto/objects/login_obj.resource
Resource         ../auto/objects/pesquisa_obj.resource
Resource         ../auto/objects/compras_obj.resource
Resource         ../auto/objects/checkout_obj.resource



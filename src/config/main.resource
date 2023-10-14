*** Settings ***
Documentation    Todos os imports e libraries do projeto

Library          SeleniumLibrary
Library          DebugLibrary
Library          DateTime
Library          String

Variables        ../config/hooks.yaml

Resource         ../utils/Comum.robot
Resource         ../utils/BDDpt-BR.robot
Resource         ../config/hooks.robot

Resource        ../../src/auto/keywords/kws_utils.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_registro_sucesso.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_campos_obrigatorios_vazios.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_email_invalido.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_senha_invalida.robot
Resource         ../../src/auto/keywords/nopCommerce/Registro/kws_confirmacao_senha_invalida.robot


#Objects
Resource         ../auto/objects/home_obj.resource
Resource         ../auto/objects/registro_obj.resource
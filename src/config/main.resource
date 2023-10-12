*** Settings ***
Documentation    Todos os imports e libraries do projeto

Library          SeleniumLibrary
Library          DebugLibrary

Variables        ../config/hooks.yaml

Resource         ../utils/Comum.robot
Resource         ../utils/BDDpt-BR.robot
Resource         ../config/hooks.robot

Resource        ../../src/auto/keywords/kws_utils.robot
Resource         ../../src/auto/keywords/Registro/kws_registro_sucesso.robot


#Objects
Resource         ../auto/objects/home_obj.resource
Resource         ../auto/objects/registro_obj.resource
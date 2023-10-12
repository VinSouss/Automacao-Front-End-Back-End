*** Settings ***
Documentation    Todos os imports e libraries do projeto

Library          SeleniumLibrary

Resource         ../utils/Comum.robot
Resource         ../utils/BDDpt-BR.robot
Resource         ../config/hooks.robot


#Objects
Resource    ../auto/objects/registro_obj.resource
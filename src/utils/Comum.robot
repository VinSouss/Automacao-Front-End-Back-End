*** Settings ***
Documentation    Keywords e Variables de dados para a automação
Resource        ../config/main.resource

*** Variables ***
${USER}        testedesafio@teste.com
${PASSWORD}    desafio123

&{CREDENCIAIS_PADROES}
...    firstName=Teste
...    lastName=Desafio
...    day=18
...    month=10
...    year=2000
...    email=testedesafio@teste.com
...    company=testeCompany
...    password=desafio123
...    confirmPassword=desafio123
...    option_day=select[name="DateOfBirthDay"] option[value="18"]
...    option_month=select[name="DateOfBirthMonth"] option[value="10"]
...    option_year=select[name="DateOfBirthYear"] option[value="2000"]
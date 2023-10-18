*** Settings ***
Documentation    Todos os objetos da página Home do sistema

*** Variables ***
&{pg_Login}
...    title=nopCommerce demo store. Login
...    pageTitle=div[class="page-title"]
...    input_email=input[class="email"]
...    input_password=input[class="password"]
...    btn_login=button[class="button-1 login-button"]
...    error_login=div[class="message-error validation-summary-errors"]
...    btn_register=button[class="button-1 register-button"]
...    message_error=Login was unsuccessful. Please correct the errors and try again.
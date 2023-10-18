*** Settings ***
Documentation    Todos os objetos da página Home do sistema

*** Variables ***
&{pg_Compras}
...    title=nopCommerce demo store. Shopping Cart
...    subTtile=div[class="page-title"]
...    checkbox_term=input[id="termsofservice"]
...    btn_checkout=button[id="checkout"]

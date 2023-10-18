*** Settings ***
Documentation    Todos os objetos da página de registro.
*** Variables ***
&{pg_Checkout}
...    title=nopCommerce demo store. Checkout
...    select_country=select[id="BillingNewAddress_CountryId"]
...    option_country=select[id="BillingNewAddress_CountryId"] option[value="168"] 
...    input_city=input[id="BillingNewAddress_City"]
...    input_address1=input[id="BillingNewAddress_Address1"]
...    input_zip=input[id="BillingNewAddress_ZipPostalCode"]
...    input_phone=input[id="BillingNewAddress_PhoneNumber"]
...    btn_continue=button[class="button-1 new-address-next-step-button"]
...    methods_shipping=div[id="shipping-methods-form"]
...    option_pay1=input[id="shippingoption_1"]
...    btn_continue_shipping=button[class="button-1 shipping-method-next-step-button"]
...    methods_payment=div[class="section payment-method"]
...    option_card=input[id="paymentmethod_0"]
...    btn_continue_payment=button[class="button-1 payment-method-next-step-button"]
...    info=div[class="info"]
...    btn_continue_info=button[class="button-1 payment-info-next-step-button"]
...    button[class="button-1 confirm-order-next-step-button"]
...    btn_confirm=button[class="button-1 confirm-order-next-step-button"]
...    messsage_sucess=//strong[text()="Your order has been successfully processed!"]
...    btn_continue_confirmOrder=button[class="button-1 confirm-order-next-step-button"]
...    city=Joao Pessoa
...    adress1=General Ozorio
...    zip=40028922
...    phone=839999999
...    value=168
...    addres_info=div[class="section select-billing-address"]
...    btn_addres_continue=button[class="button-1 new-address-next-step-button"]
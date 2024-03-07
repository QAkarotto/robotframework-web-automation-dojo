***Settings***
Documentation    Test Cart Feature

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Should Remove An Item In The Cart
    Login With    standard_user    secret_sauce

    Click    data-test=add-to-cart-sauce-labs-backpack
    Click    id=shopping_cart_container
    Click    data-test=remove-sauce-labs-backpack
    # The class card list should be empty
    Wait For Elements State    //div[@class='cart_item_label']    detached
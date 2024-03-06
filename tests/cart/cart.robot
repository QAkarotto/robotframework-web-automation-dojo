***Settings***
Documentation    Test Cart Feature

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Should Remove An Item In The Cart
    [Tags]    This
    Login With    standard_user    secret_sauce

    Click    data-test=add-to-cart-sauce-labs-backpack
    Click    id=shopping_cart_container
    Click    data-test=remove-sauce-labs-backpack

    Wait For Elements State    //div[@class='removed_cart_item']    visible
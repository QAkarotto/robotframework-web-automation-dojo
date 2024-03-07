***Settings***
Documentation    Test Checkout Feature

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Should Create A Checkout
    Login With    standard_user                                       secret_sauce
    Go To         https://www.saucedemo.com/checkout-step-one.html

    Fill Text    data-test=firstName     TestName
    Fill Text    data-test=lastName      TestLastName
    Fill Text    data-test=postalCode    TestPostalCode
    Click        id=continue

    ${checkout_text}    Get Text            id=header_container
    Should Contain      ${checkout_text}    Checkout: Overview


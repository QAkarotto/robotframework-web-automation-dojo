***Settings***
Documentation    Test Inventory Feature

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Should Contain Six Items
    Login With    standard_user    secret_sauce

    Get Element Count    //div[@class='inventory_item']    should be    6

Should Access An Unselected Item
    Login With       standard_user           secret_sauce
    
    Click            id=item_4_title_link
    ${item_name}     Get Text                xpath=//div[contains(@class, 'inventory_details_name')]
    ${item_desc}    Get Text    xpath=//div[contains(@class, 'inventory_details_desc large_size')]
    ${item_price}    Get Text                xpath=//div[contains(@class, 'inventory_details_price')]

    Should Be Equal            ${item_name}                                 Sauce Labs Backpack
    Should Be Equal    ${item_desc}    carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.
    Should Be Equal            ${item_price}                                $29.99
    Wait For Elements State    data-test=add-to-cart-sauce-labs-backpack    visible

Should Access An Selected Item
    Login With    standard_user    secret_sauce

    Click    data-test=add-to-cart-sauce-labs-backpack
    Click    id=item_4_title_link

    ${item_name}     Get Text    xpath=//div[contains(@class, 'inventory_details_name')]
    ${item_desc}    Get Text    xpath=//div[contains(@class, 'inventory_details_desc large_size')]
    ${item_price}    Get Text    xpath=//div[contains(@class, 'inventory_details_price')]

    Should Be Equal            ${item_name}                            Sauce Labs Backpack
    Should Be Equal    ${item_desc}    carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.
    Should Be Equal            ${item_price}                           $29.99
    Wait For Elements State    data-test=remove-sauce-labs-backpack    visible

Should Add An Item In The Cart
    Login With    standard_user    secret_sauce

    Click       data-test=add-to-cart-sauce-labs-bike-light
    Get Text    //span[@class='shopping_cart_badge']           should be    1

Should Remove An Item In The Cart
    Login With    standard_user    secret_sauce

    # Add two items
    Click    data-test=add-to-cart-sauce-labs-bike-light
    Click    data-test=add-to-cart-sauce-labs-backpack

    # Validate if I have two items
    Get Text    //span[@class='shopping_cart_badge']    should be    2

    # Remove an item and validate the cart
    Click       data-test=remove-sauce-labs-bike-light
    Get Text    //span[@class='shopping_cart_badge']      should be    1
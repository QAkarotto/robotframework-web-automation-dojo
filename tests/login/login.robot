***Settings***
Documentation    Test Login Feature

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Should Success Login
    Login With         standard_user    secret_sauce2
    Get Text            id=header_container
    Take Screenshot
    
Should Fail Login
    Login With         standard_user    wrongpass
    Get Text            data-test=error
    Take Screenshot
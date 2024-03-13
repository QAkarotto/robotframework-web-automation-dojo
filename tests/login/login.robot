***Settings***
Documentation    Test Login Feature

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Should Success Login
    Login With            standard_user    secret_sauce2
    Get Text              id=header_container
    Take Screenshot
    
Should Fail Login
    Login With           standard_user    wrongpass
    Take Screenshot
    ${error_text}        Get Text             data-test=error
    Should Contain       ${error_text}        Epic sadface: Username and password do not match any user in this service    
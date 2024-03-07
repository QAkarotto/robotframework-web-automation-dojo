***Settings***
Documentation    Test Login Feature

Resource    ${EXECDIR}/resources/base.robot

***Test Cases***
Should Success Login
    Login With         standard_user    secret_sauce
    Take Screenshot
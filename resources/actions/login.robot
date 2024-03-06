***Settings***
Documentation    Login Action

Library    OperatingSystem

***Keywords***
Login With
    [Arguments]    ${user_name}    ${password}

    New Browser    chromium           False            timeout=60s
    New Page       ${base_url}
    Fill Text      id=user-name       ${user_name}
    Fill Text      id=password        ${password}
    Click          id=login-button
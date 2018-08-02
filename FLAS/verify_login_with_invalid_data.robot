*** Test Cases ***
verify_login_with_invalid_data.robot
    Open Browser    http://ec.flascloud.com    Chrome
    Wait Until Page Contains Element    xpath=//input[@name='username']    30
    Input Text    xpath=//input[@name='username']    siva
    Wait Until Page Contains Element    xpath=//input[@name='password']    30
    Input Text    xpath=//input[@name='password']    Nexii@12345
    Wait Until Page Contains Element    id=sign_in_aut    30
    Click Button    id=sign_in_aut
    Wait Until Page Contains    Unauthorised user    50
    Close Browser
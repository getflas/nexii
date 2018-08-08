***Settings***


*** Test Cases ***
verify_updation_of_prospects_meeting_status_with_valid_data.robot
    Open Browser    http://emc.flascloud.com    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@name='username']    40
    Input Text    xpath=//input[@name='username']    siva
    Wait Until Page Contains Element    xpath=//input[@name='password']    30
    Input Text    xpath=//input[@name='password']    Nexii@123
    Wait Until Page Contains Element    id=sign_in_aut    30
    Click Button    id=sign_in_aut
    Wait Until Page Contains    Products    50
    Close Browser
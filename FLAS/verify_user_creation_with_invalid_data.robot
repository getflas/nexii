***Settings***
Library           Selenium2Library    WITHNAME    se

*** Test Cases ***
verify_user_creation_with_invalid_data.robot
    Open Browser    http://default.flascloud.com    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@name='username']    30
    Input Text    xpath=//input[@name='username']    ubuntu
    Wait Until Page Contains Element    xpath=//input[@name='password']    30
    Input Text    xpath=//input[@name='password']    Nexii@123
    Wait Until Page Contains Element    id=sign_in_aut    30
    Click Button    id=sign_in_aut
    Sleep    5
    Wait Until Element Is Visible    xpath://*[@id="myNavbar"]/ul/li[3]/a    50
    Click Element    xpath://*[@id="myNavbar"]/ul/li[3]/a
    Wait Until Element Is Visible    name:username    50
    Input Text    name:username    autotest1
    Wait Until Element Is Visible    name:emailid    50
    Input Text    name:emailid    autotest1@a.com
    Wait Until Element Is Visible    name:firstname    50
    Input Text    name:firstname    auto
    Wait Until Element Is Visible    name:middlename    50
    Input Text    name:middlename    a
    Wait Until Element Is Visible    name:lastname    50
    Input Text    name:lastname    test1
    Wait Until Element Is Visible    name:organization    50
    Click Element    name:organization
    Wait Until Element Is Visible    xpath://*[@id="signup_form_super"]/form/div[6]/div/select/option[2]    50
    Click Element    xpath://*[@id="signup_form_super"]/form/div[6]/div/select/option[2]
    Wait Until Element Is Visible    id:create_user_aut    50
    Click Element    id:create_user_aut
    Wait Until Page Contains    Username - A user with that username already exists    50
    Sleep    2
    Close Browser
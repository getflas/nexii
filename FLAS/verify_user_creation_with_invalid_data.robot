***Settings***
Library           Selenium2Library    WITH NAME    se

*** Variables ***
@{packages}       robotframework-selenium2library

*** Test Cases ***
verify_user_creation_with_invalid_data.robot
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    headless
    Call Method    ${chrome_options}    add_argument    disable-gpu
    Call Method    ${chrome_options}    add_argument    disable-extension
    Call Method    ${chrome_options}    add_argument    disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    no-sandbox
    ${options}=    Call Method    ${chrome_options}    to_capabilities
    Open Browser    http://default.flascloud.com    Chrome    desired_capabilities=${options}
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
    Input Text    name:username    siva
    Wait Until Element Is Visible    name:emailid    50
    Input Text    name:emailid    siva.sangapatnam@nexiilabs.com
    Wait Until Element Is Visible    name:firstname    50
    Input Text    name:firstname    siva
    Wait Until Element Is Visible    name:middlename    50
    Input Text    name:middlename    siva
    Wait Until Element Is Visible    name:lastname    50
    Input Text    name:lastname    siva
    Wait Until Element Is Visible    name:organization    50
    Click Element    name:organization
    Wait Until Element Is Visible    xpath://*[@id="signup_form_super"]/form/div[6]/div/select/option[2]    50
    Click Element    xpath://*[@id="signup_form_super"]/form/div[6]/div/select/option[2]
    Wait Until Element Is Visible    id:create_user_aut    50
    Click Element    id:create_user_aut
    Wait Until Page Contains    Username - A user with that username already exists    50
    Sleep    2
    Close Browser
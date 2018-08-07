*** Settings ***
Library           Selenium2Library    WITH NAME    se

*** Variables ***
@{packages}       robotframework-selenium2library

*** Test Cases ***
verify_login_with_valid_data
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    headless
    Call Method    ${chrome_options}    add_argument    disable-gpu
    ${options}=    Call Method    ${chrome_options}    to_capabilities
    Open Browser    http://emc.flascloud.com    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@name='username']    30
    Input Text    xpath=//input[@name='username']    siva
    Wait Until Page Contains Element    xpath=//input[@name='password']    30
    Input Text    xpath=//input[@name='password']    Nexii@123
    Wait Until Page Contains Element    id=sign_in_aut    30
    Click Button    id=sign_in_aut
    Wait Until Page Contains    Products    50
    Close Browser
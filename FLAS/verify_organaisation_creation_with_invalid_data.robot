*** Settings ***
Library           Selenium2Library    WITH NAME    se

*** Variables ***
@{packages}       robotframework-selenium2library

*** Test Cases ***
verify_organaisation_creation_with_invalid_data
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
    Wait Until Element Is Visible    xpath://button[@id="add_org_aut"]
    Click Element    xpath://button[@id="add_org_aut"]
    Wait Until Element Is Visible    id:add_org_name_aut
    Input Text    id:add_org_name_aut    nexii
    Wait Until Element Is Visible    xpath://button[@id="create_org_aut"]
    Click Element    xpath://button[@id="create_org_aut"]
    Sleep    2
    Wait Until Page Contains    nexii    30
    Close Browser
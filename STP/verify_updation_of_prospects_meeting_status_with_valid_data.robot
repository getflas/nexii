*** Settings ***
Library           Selenium2Library    WITH NAME    se

*** Variables ***
@{packages}       robotframework-selenium2library

*** Test Cases ***
verify_updation_of_prospects_meeting_status_with_valid_data
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    headless
    Call Method    ${chrome_options}    add_argument    disable-gpu
    Call Method    ${chrome_options}    add_argument    disable-extension
    Call Method    ${chrome_options}    add_argument    disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    no-sandbox
    ${options}=    Call Method    ${chrome_options}    to_capabilities
    Open Browser    http://192.168.50.66/    Chrome    desired_capabilities=${options}
    Input Text    xpath=//input[@id='emailid']    sal1@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    Click Button    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://*[@id="sidebar-menu"]/ul/li[4]/a    30
    Click Element    xpath://*[@id="sidebar-menu"]/ul/li[4]/a
    Sleep    2
    Wait Until Page Contains Element    xpath://*[@id="sidebar-menu"]/ul/li[4]/ul/li[2]/a    30
    Click Element    xpath://*[@id="sidebar-menu"]/ul/li[4]/ul/li[2]/a
    Wait Until Page Contains Element    xpath=//*[@id="prospects"]/div/div/div[2]/div/a[1]    30
    Click Element    xpath=//*[@id="prospects"]/div/div/div[2]/div/a[1]
    Wait Until Element Is Visible    xpath://*[@id="stageName"]    30
    Click Element    xpath://*[@id="stageName"]
    Wait Until Element Is Visible    xpath://*[@id="stageName"]/option[5]    30
    Click Element    xpath://*[@id="stageName"]/option[5]
    Wait Until Element Is Visible    xpath://*[@id="meetingtypeName"]    30
    Click Element    xpath://*[@id="meetingtypeName"]
    Wait Until Element Is Visible    xpath://*[@id="meetingtypeName"]/option[3]    30
    Click Element    xpath://*[@id="meetingtypeName"]/option[3]
    Input Text    id:datetimepicker    2018-05-03 06:02
    Wait Until Page Contains Element    id:datetimepicker    50
    Click Element    id:datetimepicker
    Input Text    id:datetimepicker1    2018-10-26 16:02
    Wait Until Page Contains Element    id:datetimepicker1    50
    Click Element    id:datetimepicker1
    Input Text    id:comments    Discussion on STP project new
    Wait Until Page Contains Element    id:updatebtn    30
    Click Element    id:updatebtn
    Sleep    2
    Close Browser
***Settings***
Library           Selenium2Library    WITH NAME    se
Library           Selenium2Library    WITH NAME    se

*** Test Cases ***
verify_admin_login_with_valid_data.robot
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    ${options}=     Call Method     ${chrome_options}    to_capabilities  
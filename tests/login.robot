*** Settings ***
Documentation       Checking the login functionality.
Library             SeleniumLibrary
Resource            ../common/common_keys.robot
Variables           ../common/variables.py
Suite Setup         Navigate to the site
Suite Teardown      Close Browser

*** Test Cases ***
Login With Valid Credentials
    [Tags]  valid
    Input Text                          ${USERNAME_FIELD}       text=${USR}
    Input Password                      ${PASSWORD_FIELD}       text=$PSW
    Page Should Contain                 Welcome to the Secure Area.
    Click Element                       ${LOGOUT_BUTTON}
    Page Should Contain                 You logged out of the secure area!

Login With Invalid Credentials
    Checkbox Should Not Be Selected     xpath=//input[@type="checkbox"][1]
    Select Checkbox                     xpath=//input[@type="checkbox"][1]

*** Keywords ***
Navigate To The Site
    Open Browser               ${URL}/login         ${BROWSER}
    Maximize Browser Window
    Title Should Be     The Internet
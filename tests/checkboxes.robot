*** Settings ***
Documentation       Checking checkbox functionality.
Library             SeleniumLibrary
Resource            ../common/common_keys.robot
Suite Setup         Navigate to the site
Suite Teardown      Close Browser

*** Test Cases ***
Unchecking a box
    Unselect Checkbox                   xpath=//input[@type="checkbox" and @checked]
    Checkbox Should Not Be Selected     xpath=//input[@type="checkbox"][2]

Checking a box
    Checkbox Should Not Be Selected     xpath=//input[@type="checkbox"][1]
    Select Checkbox                     xpath=//input[@type="checkbox"][1]

*** Keywords ***
Navigate To The Site
    Open Browser               ${URL}/checkboxes         ${BROWSER}
    Maximize Browser Window
    Title Should Be     The Internet
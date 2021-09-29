*** Settings ***
Documentation       Testing the functionality of adding and removing elements
Library             SeleniumLibrary
Resource            ../common/common_keys.robot
Suite Setup         Navigate to the site
Suite Teardown      Close Browser

*** Test Cases ***
Adding An Element
    [Tags]  add
    Click Link         //a[contains(@href,"/add_remove_elements/")]
    Click Button       ${ADD_BUTTON}
    Sleep              5

Removing An Element
    [Tags]  remove
    Sleep              2
    Click Link         //a[contains(@href,"/add_remove_elements/")]
    Click Button       ${ADD_BUTTON}
    Click Button       ${REMOVE_BUTTON}
    Page Should Not Contain Button  ${REMOVE_BUTTON}
    Sleep              1

*** Keywords ***
Navigate To The Site
    Open Browser               ${URL}         ${BROWSER}
    Maximize Browser Window
    Title Should Be     The Internet
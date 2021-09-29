*** Settings ***
Documentation       Testing basic authentication.
Library             SeleniumLibrary
Resource            ../common/common_keys.robot
Suite Setup         Navigate To The Site
Suite Teardown      Close Browser

*** Test Cases ***
Basic Authentication
    Page Should Contain         Congratulations! You must have the proper credentials.

*** Keywords ***
Navigate To The Site
    Open Browser               admin:admin@${URL_NP}/basic_auth         ${BROWSER}
    Maximize Browser Window
    Title Should Be     The Internet
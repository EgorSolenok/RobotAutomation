*** Settings ***
Documentation    Main Item Order Functionality
Library     SeleniumLibrary
#Library    ./Libraries/chromedriversync.py


*** Variables ***
${browser}=    Chrome
${url}=    https://demo.nopcommerce.com/
${CHROMEDRIVER_PATH}=    chromedriversync.Get Chromedriver Path

*** Test Cases ***
User can make order with found product
    [Documentation]    This test case verifies created order with item in order list
    [Tags]    Smoke Functional ItemOrder
    Open Main Page
    Click Element    //input[@type='text']
    press keys    css:input.search-box-text    Digital
    press keys    css:input.search-box-text    SPACE
    input text    css:input.search-box-text    Storm    clear=False
    press keys    css:input.search-box-text    RETURN
    element should be visible    css:div.item-box h2 a[href]
    element should be visible    css:div.item-box h2 a[hreff]
    sleep    3

    Close Browser
#    create webdriver    Chrome    executable_path
#    go to    https://demo.nopcommerce.com/
#    Go to  www.google.com

*** Keywords ***
Open Main Page
    Open Browser    ${url}    ${browser}


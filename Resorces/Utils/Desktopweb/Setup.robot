*** Settings ***
Documentation    Common Keywords
Library  SeleniumLibrary
Resource  ../../../App Locators/Desktopweb/WebLocators.robot


*** Keywords ***
Open Initial Browser
    [Documentation]  To initialize Browser
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Page Should Contain Image  ${moolyaLogo}

SeleniumWait
    [Documentation]  To apply selenium wait
    Set Selenium Implicit Wait  ${time}

To Go Bottom Of Page
    [Documentation]  To go to bottom of page
    Press Keys  ${pageDown}  ${endKey}

To Close Browser
    [Documentation]  To Close all opened Browser
    Close All Browsers

*** Settings ***
Documentation  JioMart Mobile App testing
Library  AppiumLibrary
Resource  JioMartResource.robot
# robot Test\Android\JioMartTest.robot
Suite Setup  Open JioMart Application On Real Device
Suite Teardown  Close JioMart Apllication


*** Test Cases ***
User Allows All The Permission Required
    [Tags]  Test01
    [Documentation]  User Allows All The Permission Required
    User Allows Picture And Audio Record

User Verifies JioMart Application Opened Or Not
    [Tags]  Test02
    [Documentation]  User Verifies JioMart Application Opened Or Not
    User Checks JioMart Application Is Opened Or Not

User Login Account Through Valid Credentials
    [Tags]  Test03
    [Documentation]  User Will Login To His Account
    User Switch Context To WebView
    User Enters UserName
    User Enters Password
    User Clicks On Login Button

User Adds Product To His Cart
    [Tags]  Test04
    [Documentation]  User Adds Product To Cart
    User Selects JioPhone
    User Adds His Pincode
    User Adds Product To Cart

User Logouts The Account
    [Tags]  Test05
    [Documentation]  User Logouts His Account
    User Clicks On Home Tab
    User Clicks On Side Menu Options
    User Clicks On Logout

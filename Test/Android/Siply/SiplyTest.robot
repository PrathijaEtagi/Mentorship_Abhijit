*** Settings ***
Documentation  Siply Mobile App testing
Library  AppiumLibrary
Resource  Import.robot
# To Run This Test Use "robot Test/Android/Siply/SiplyTest.robot" Command
Suite Setup  Open Siply Application On Real Device
Suite Teardown  Close Siply Application


*** Test Cases ***
To Verify Whether Application Is Opened
    [Tags]  Test01
    [Documentation]  User Verifies Siply Application Opened Or Not
    Check Siply Application Is Opened

User Navigate To Language Section To Check Confirm Button
    [Tags]  Test02
    [Documentation]  User Verifies Confirm Button In Language Section
    User Clicks On Language Option To Select Available Language
    User Clicks On Confirm Button Ater Selecting Language

User Navigate To Language Section To Check Close Button
    [Tags]  Test03
    [Documentation]  User Verifies Close Button In Language Section
    User Clicks On Language Option To Select Available Language
    User Clicks On Close In Language Tab

User Selects His Required Language
    [Tags]  Test04
    [Documentation]  User Checks All Languages In Language Section
    User Selects Hindi Language
    User Selects Kannada Language
    User Selects Telegu Language
    User Selects Tamil Language
    User Selects Malayalam Language
    User Selects Marathi Language
    User Selects Gujarati Language
    User Selects Bengali Language
    User Selects Punjabi Language
    User Selects Odia Language
    User Selects English Language

User Clicks On Start Saving Button To Get Started
    [Tags]  Test05
    [Documentation]  User Gets Started With Start Saving
    User Clicks On Start Saving Button
    Verify Register Page Is Opened

User Should Enter Valid Phone Number To Register
    [Tags]  Test06
    [Documentation]  User Enters His Number To Register
    Click On Text Field To Enter Valid Number
    User Clicks On Continue Button To Register His Number

Verify Fetching OTP Page Is Opened Or Not
    [Tags]  Test07
    [Documentation]  User Verifies OTP Page Opened Or Not
    Verify OTP Page Opened Or Not

User Fills Recieved OTP
    [Tags]  Test08
    [Documentation]  User Enters Recieved OTP
    User Enters Recieved OTP

User Clicks On Terms And Conditions Tag
    [Tags]  Test09
    [Documentation]  User Agrees Terms And Conditions
    User Clicks On Terms And Conditions

User Clicks On Verify OTP Button
    [Tags]  Test10
    [Documentation]  User Clicks On OTP Confirm Button
    User Clicks On Verify OTP Button To Verify Entered OTP

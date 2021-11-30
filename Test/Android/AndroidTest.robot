*** Settings ***
Documentation  Siply Mobile App testing
Library  AppiumLibrary
Resource  ..\\..\\Resorces\\Utils\\Android\\Setup.robot
Resource  ..\\..\\Resorces\\Utils\\Android\\Language.robot
Resource  ..\\..\\Resorces\\Utils\\Android\\Common.robot

Suite Setup  Open Siply Application On Real Device
Suite Teardown  Close Siply Application

# robot Test\\Android\\AndroidTest.robot
*** Test Cases ***
To Verify Whether Application Is Opened
    [Tags]  Test01
    Check Siply Application Is Opened

User Navigate To Language Section To Check Confirm Button
    [Tags]  Test02
    User Clicks On Language Option To Select Available Language
    User Clicks On Confirm Button Ater Selecting Language

User Navigate To Language Section To Check Close Button
    [Tags]  Test03
    User Clicks On Language Option To Select Available Language
    User Clicks On Close In Language Tab

User Selects His Required Language
    [Tags]  Test04
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
    User Clicks On Start Saving Button
    Verify Register Page Is Opened

User Should Enter Valid Phone Number To Register
    [Tags]  Test06
    Click On Text Field To Enter Valid Number
    User Clicks On Continue Button To Register His Number

Verify Fetching OTP Page Is Opened Or Not
    [Tags]  Test07
    Verify OTP Page Opened Or Not

User Fills Recieved OTP
    [Tags]  Test08
    User Enters Recieved OTP

User Clicks On Terms And Conditions Tag
    [Tags]  Test09
    User Clicks On Terms And Conditions

User Clicks On Verify OTP Button
    [Tags]  Test10
    User Clicks On Verify OTP Button To Verify Entered OTP

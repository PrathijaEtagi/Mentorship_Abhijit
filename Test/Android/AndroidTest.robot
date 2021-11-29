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
    Check Siply Application Is Opened

User Navigate To Language Section To Check Confirm Button
    User Clicks On Language Option To Select Available Language
    User Clicks On Confirm Button Ater Selecting Language

User Navigate To Language Section To Check Close Button
    User Clicks On Language Option To Select Available Language
    User Clicks On Close In Language Tab

#User Selects His Required Language
#    #User Selects Hindi Language
#    #User User Selects Kannada Language
#    #User User Selects Telegu Language
#    #User User Selects Tamil Language
#    #User User Selects Malayalam Language
#    #User User Selects Marathi Language
#    #User User Selects Gujarati Language
#    #User User Selects Bengali Language
#    #User User Selects Punjabi Language
#    #User User Selects Odia Language


User Clicks On Start Saving Button To Get Started
    User Clicks On Start Saving Button
    Verify Register Page Is Opened

User Should Enter Valid Phone Number To Register
    Click On Text Field To Enter Valid Number

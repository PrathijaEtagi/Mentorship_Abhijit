*** Settings ***
Documentation    Siply Mobile App testing
Library          AppiumLibrary
Resource        ..\\..\\Resorces\\Utils\\Android\\Setup.robot
Resource        ..\\..\\Resorces\\Utils\\Android\\Language.robot

Suite Setup  Open Siply App On Real Device
Suite Teardown  Close Siply Application

*** Test Cases ***
To Verify Whether Application Is opened
    Check Siply Application Is opened

User Selects Languages
    User Clicks On Language Option To Select Available Language
    User Clicks On Close In Language Tab

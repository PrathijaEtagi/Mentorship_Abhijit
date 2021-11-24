*** Settings ***
Documentation    Moolya Official Website Testing
Library          SeleniumLibrary
Resource         ../Resorces/moolyaKeywords.robot
Resource         ../Resorces/moolyaCommonKeywords.robot

Suite Setup      Open Initial Browser
Suite Teardown   To Close Browser


*** Test Cases ***
User should open Home Tab
    [Documentation]  User Should Be Able To Open Home Tab
    [Tags]  Test1
    When User Clicks On Home Tab
    Then Check Home Page Is Opened Or Not
# What We love to do
    Click on Remote Teams That Works
    Click on Improve Coverage
    Click on Automate Right Things
    Click on Prevent Bugs
    Click on Build Super Teams
# To go to Solution Page from home page
    Click on This is Exciting Button
    Go Back
# To go to Leadership page from Home page
    Click on view more to navigate to Leadership page
    Go Back

Open Solution Tab
    [Documentation]  User Should Be Able To Open Solution Tab
    [Tags]  Test2
    # To Open Moolya Power
    Click On Moolya Solution Tab
    SeleniumWait
    Click on Moolya Power
    Verify Moolya Power Opened or not
    SeleniumWait
    # Solved through a passion for testing
    Click on Test Ownership
    Click on Test Leadership
    Click on Test Expertise
    # To Open Moolya Startup Test LAB
    Click On Moolya Solution Tab
    SeleniumWait
    Click on Startup Test LAB
    Verify Moolya Startup Test LAB Opened or not
    # Testing is our life. Not yours.
    Click on Training Time
    Click on Hiring Time
    Click on PO Time
    Click on CTO Time

Open Product Tab
    [Tags]  Test3
    [Documentation]  User Should Be Able To Open Products Tab
    # To Open Bugasura Tracker
    Click on Moolya Products tab
    SeleniumWait
    Click On Bugasura Tracker
    Switch Back to Main Window
    # To Open Bugasura Report
    Click on Moolya Products tab
    SeleniumWait
    Click On Bugasura Report
    Switch Back to Main Window

Open Learning Tab
    [Tags]  Test4
    [Documentation]  User Should Be Able To Open Learning Tab
    Click On Learning Tab
    SeleniumWait
    # To Open Blogs
    Click On Blogs
    Switch Back to Main Window
    # To Open Leadership in testing
    Click On Learning Tab
    SeleniumWait
    Click On Leadership in testing
    # To Open Deep Test
    Click On Learning Tab
    SeleniumWait
    Click on Deep Test
    Switch Back to Main Window

Open About Us Tab
    [Tags]  Test5
    [Documentation]  User Should Be Able To Open About Us Tab
    User Clicks On About Us Tab
    Verify About Us Page Is Opened Or Not

Open Career Tab
    [Tags]  Test6
    [Documentation]  User Should Be Able To Open Career Tab
    User Clicks On Career Tab
    Verify Career Tab Is Opened Or Not

*** Settings ***
Documentation    Moolya Official Website Testing
Library          SeleniumLibrary
Resource         Resource.robot
# To Run This File Use "robot Test\DesktopWeb\WebTest.robot" Command
Suite Setup      Open Initial Browser
Suite Teardown   To Close Browser


*** Test Cases ***
User Should Open Home Tab
    [Documentation]  User Should Be Able To Open Home Tab
    [Tags]  Test01
    When User Clicks On Home Tab
    Then Checks Home Page Is Opened Or Not

User Clicks On What We Love To Do Tabs Present In Home Page
    [Documentation]  User Should Be Able click on all tabs present in homepage
    [Tags]  Test02
    When User Clicks On What We Love To Do Tabs

User Should Be Able To Go To Solution Page From Home Page
    [Documentation]  User should be able  go to Solution Page from home page
    [Tags]  Test03
    User Clicks On This Is Exciting Button
    Then Go Back

User Should Be Able To Go To Leadership Page From Home Page
    [Documentation]  User should be able  go to Leadership page  from home page
    [Tags]  Test04
    User Clicks On View More To Navigate To Leadership Page
    Then Go Back

User Should Be Able To Go To 10K Run Page From Home Page
    [Documentation]  User should be able  go to 10K Run Page from home page
    [Tags]  Test05
    User Clicks On Read More To Navigate To 10K Run Page
    Then Go Back

User Should Open Solution Tab Dropdown And Navigate To Power Page
    [Documentation]  User Should Open Solution Tab Dropdown And Navigate To Power Page
    [Tags]  Test06
    When User Clicks On Moolya Solution Tab
    And Clicks On Moolya Power
    Then Verifies Moolya Power Opened Or Not

User Should Be Able To Click On Passion For Testing Tabs In Power Page
    [Documentation]  User Should Be Able To Click On Passion For Testing Tabs In Power Page
    [Tags]  Test07
    User Clicks On Solved Through A Passion For Testing

User Should Open Solution Tab Dropdown And Navigate To Startup Test LAB Page
    [Documentation]  User Should Open Solution Tab Dropdown And Navigate To Startup Test LAB Page
    [Tags]  Test08
    When User Clicks On Moolya Solution Tab
    Then Click On Startup Test LAB
    And Verifies Moolya Startup Test LAB Opened Or Not

User Should Be Able To Click On Testing Is Our Life Not Yours Tab In Startup Test LAB Page
    [Documentation]  User Should Be Able To Click On Testing Is Our Life Not Yours Tab In Startup Test LAB Page
    [Tags]  Test09
    User Clicks On Testing Is Our Life Not Yours

User Should Open Products Tab Dropdown And Navigate To Bugasura Tracker Page
    [Tags]  Test10
    [Documentation]  User Should Open Products Tab Dropdown And Navigate To Bugasura Tracker Page
    When User Clicks On Moolya Products Tab
    Then Clicks On Bugasura Tracker
    Switch Back To Main Window

User Should Open Products Tab Dropdown And Navigate To Bugasura Report Page
    [Tags]  Test11
    [Documentation]  User Should Open Products Tab Dropdown And Navigate To Bugasura Report Page
    When User Clicks On Moolya Products Tab
    Then Clicks On Bugasura Report
    Switch Back To Main Window

User Should Open Learning Tab Dropdown And Navigate To Blogs Page
    [Tags]  Test12
    [Documentation]  User Should Open Learning Tab Dropdown And Navigate To Blogs Page
    When User Clicks On Learning Tab
    And Clicks On Blogs
    Switch Back To Main Window

User Should Open Learning Tab Dropdown And Navigate To Leadership In Testing Page
    [Tags]  Test13
    [Documentation]  User Should Open Learning Tab Dropdown And Navigate To Leadership In Testing Page
    When User Clicks On Learning Tab
    And Clicks On Leadership In Testing

User Should Open Learning Tab Dropdown And Navigate To Deep Test Page
    [Tags]  Test14
    [Documentation]  User Should Open Learning Tab Dropdown And Navigate To Deep Test Page
    When User Clicks On Learning Tab
    Then Clicks On Deep Test
    Switch Back To Main Window

Open About Us Tab
    [Tags]  Test15
    [Documentation]  User Should Be Able To Open About Us Tab
    When User Clicks On About Us Tab
    Then Verifies About Us Page Is Opened Or Not

Open Career Tab
    [Tags]  Test16
    [Documentation]  User Should Be Able To Open Career Tab
    When User Clicks On Career Tab
    Then Verifies Career Tab Is Opened Or Not

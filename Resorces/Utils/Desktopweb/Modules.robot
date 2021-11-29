*** Settings ***
Library  SeleniumLibrary
Resource  ..\\..\\..\\App Locators\\WebLocators.robot


*** Keywords ***
User Clicks On Home Tab
    [Documentation]  User Should Be Able To Open Home Tab
    Click Element  ${moolyaHomePage}

Checks Home Page Is Opened Or Not
    Wait Until Page Contains Element  ${weShouldTalk}

Click On We Should Talk
    Click Element  ${weShouldTalk}
    Sleep    5s

User Clicks On What We Love To Do Tabs
    [Documentation]  User Should Be Able click on all tabs
    Click Element  ${remoteTeamsThatWorks}
    Click Element  ${improveCoverage}
    Click Element  ${automateRightThings}
    Click Element  ${preventBugs}
    Click Element  ${buildSuperTeams}
    Sleep    5s

Click On Prevent Bugs
    Click Element  ${preventBugs}

Click On Automate Right Things
    Click Element  ${automateRightThings}

Click On Improve Coverage
    Click Element  ${improveCoverage}

Click On Remote Teams That Works
    Click Element  ${remoteTeamsThatWorks}

User Clicks On This Is Exciting Button
    Click Element  ${thisIsExciting}

User Clicks On View More To Navigate To Leadership Page
    Click Element  ${viewMore}
    Sleep    5s

User Clicks On Moolya Solution Tab
    [Documentation]  User Should Be Able To Open Solution Tab
    Click Element  ${moolyaSolution}

Clicks On Moolya Power
    Click Element  ${moolyaPower}

Verifies Moolya Power Opened Or Not
    Page Should Contain Element  ${moolyaPowerTitle}

Click On Test Expertise
    Click Element  ${testExpertise}

Click On Test Leadership
    Click Element  ${testLeadership}

Click On Test Ownership
    Click Element  ${testOwnership}

Click On Startup Test LAB
    Click Element  ${startupTestLab}

Verifies Moolya Startup Test LAB Opened Or Not
    Page Should Contain Element  ${startupTestLabText}

Click On CTO Time
    Click Element  ${ctoTime}

Click On PO Time
    Click Element  ${poTime}

Click On Hiring Time
    Click Element  ${hiringTime}

Click On Training Time
    Click Element  ${trainingTime}

User Clicks On Moolya Products Tab
    [Documentation]  User Should Be Able To Open Products Tab
    Click Element  ${moolyaProducts}

Clicks On Bugasura Tracker
    Click Element  ${bugasuraTracker}

Switch Back To Main Window
    Switch Window

Clicks On Bugasura Report
    Click Element  ${bugasuraReport}

User Clicks On Learning Tab
    [Documentation]  User Should Be Able To Open Learning Tab
    Click Element  ${moolyaLearning}

Clicks On Blogs
    Click Element  ${moolyaBlogs}

Clicks On Leadership In Testing
    Click Element   ${moolyaLeadership}

Clicks On Deep Test
    Click Element  ${moolyaDeepTest}

User Clicks On About Us Tab
    [Documentation]  User Should Be Able To Open About Us Tab
    Click Element  ${moolyaAboutUs}

Verifies About Us Page Is Opened Or Not
    Page Should Contain Element  ${aboutUsPageHeader}

User Clicks On Career Tab
    [Documentation]  User Should Be Able To Open Career Tab
    Click Element  ${moolyaCareer}

Verifies Career Tab Is Opened Or Not
    Page Should Contain Element  ${careerPageHeader}

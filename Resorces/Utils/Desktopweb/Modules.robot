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
    Run Keyword And Ignore Error  Scroll Into
    Sleep  2s
    Click Element  ${remoteTeamsThatWorks}
    Click Element  ${improveCoverage}
    Click Element  ${automateRightThings}
    Click Element  ${preventBugs}
    Click Element  ${buildSuperTeams}
    Sleep  2s

Scroll Into
    Scroll Element Into View  ${remoteTeamsThatWorks}

Click On Prevent Bugs
    Click Element  ${preventBugs}

Click On Automate Right Things
    Click Element  ${automateRightThings}

Click On Improve Coverage
    Click Element  ${improveCoverage}

Click On Remote Teams That Works
    Click Element  ${remoteTeamsThatWorks}

Scroll Into This Is Exciting
    Scroll Element Into View  ${thisIsExciting}

User Clicks On This Is Exciting Button
    Run Keyword And Ignore Error  Scroll Into This Is Exciting
    Click Element  ${thisIsExciting}
    Sleep  2s

Scroll Into View More
    Scroll Element Into View  ${viewMore}
    Sleep  5s

User Clicks On View More To Navigate To Leadership Page
    Run Keyword And Ignore Error  Scroll Into View More
    Click Button  ${viewMore}
    Sleep  2s

Scroll Into 10K Run Page
    Scroll Element Into View  ${10kRun}

User Clicks On Read More To Navigate To 10K Run Page
    Run Keyword And Ignore Error  Scroll Into 10K Run Page
    Click Element  ${10kRun}
    Sleep  2s

User Clicks On Moolya Solution Tab
    [Documentation]  User Should Be Able To Open Solution Tab
    Click Element  ${moolyaSolution}

Clicks On Moolya Power
    Click Element  ${moolyaPower}

Verifies Moolya Power Opened Or Not
    Page Should Contain Element  ${moolyaPowerTitle}

Scroll Into Test Ownership
    Scroll Element Into View   ${testOwnership}
    Sleep  5s

Click On Test Expertise
    Click Element  ${testExpertise}
    Sleep  2s

Click On Test Leadership
    Click Element  ${testLeadership}

Click On Test Ownership
    Run Keyword And Ignore Error  Scroll Into Test Ownership
    Click Element  ${testOwnership}

Click On Startup Test LAB
    Click Element  ${startupTestLab}

Verifies Moolya Startup Test LAB Opened Or Not
    Page Should Contain Element  ${startupTestLabText}

Scroll Into Training Time
    Scroll Element Into View  ${trainingTime}
    Sleep  5s

Click On CTO Time
    Click Element  ${ctoTime}

Click On PO Time
    Click Element  ${poTime}

Click On Hiring Time
    Click Element  ${hiringTime}

Click On Training Time
    Run Keyword And Ignore Error  Scroll Into Training Time
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

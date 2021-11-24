*** Settings ***
Library  SeleniumLibrary
Resource  moolyaVariables.robot


*** Keywords ***
User Clicks On Home Tab
    [Documentation]  User Should Be Able To Open Home Tab
    Click Element  ${moolyaHomePage}

Check Home Page Is Opened Or Not
    Wait Until Page Contains Element  ${weShouldTalk}

Click on We should talk
    Click Element  ${weShouldTalk}
    Sleep    5s

Click on Build Super Teams
    Click Element  ${buildSuperTeams}
    Sleep    5s

Click on Prevent Bugs
    Click Element  ${preventBugs}
    Sleep    5s

Click on Automate Right Things
    Click Element  ${automateRightThings}

Click on Improve Coverage
    Click Element  ${improveCoverage}

Click on Remote Teams That Works
    Click Element  ${remoteTeamsThatWorks}
    Sleep    5s

Click on This is Exciting Button
    Click Element  ${thisIsExciting}

Click on view more to navigate to Leadership page
    Click Element  ${viewMore}
    Sleep    5s

 Click On Moolya Solution Tab
    [Documentation]  User Should Be Able To Open Solution Tab
    Click Element  ${moolyaSolution}

Click on Moolya Power
    Click Element  ${moolyaPower}

Verify Moolya Power Opened or not
    Page Should Contain Element  ${moolyaPowerTitle}

Click on Test Expertise
    Click Element  ${testExpertise}

Click on Test Leadership
    Click Element  ${testLeadership}

Click on Test Ownership
    Click Element  ${testOwnership}

Click on Startup Test LAB
    Click Element  ${startupTestLab}

Verify Moolya Startup Test LAB Opened or not
    Page Should Contain Element  ${startupTestLabText}

Click on CTO Time
    Click Element  ${ctoTime}

Click on PO Time
    Click Element  ${poTime}

Click on Hiring Time
    Click Element  ${hiringTime}

Click on Training Time
    Click Element  ${trainingTime}

Click on Moolya Products tab
    [Documentation]  User Should Be Able To Open Products Tab
    Click Element  ${moolyaProducts}

Click On Bugasura Tracker
    Click Element  ${bugasuraTracker}

Switch Back to Main Window
    Switch Window

Click On Bugasura Report
    Click Element  ${bugasuraReport}

Click On Learning Tab
    [Documentation]  User Should Be Able To Open Learning Tab
    Click Element  ${moolyaLearning}

Click On Blogs
    Click Element  ${moolyaBlogs}

Click On Leadership in testing
    Click Element   ${moolyaLeadership}

Click on Deep Test
    Click Element  ${moolyaDeepTest}

User Clicks On About Us Tab
    [Documentation]  User Should Be Able To Open About Us Tab
    Click Element  ${moolyaAboutUs}

Verify About Us Page Is Opened Or Not
    Page Should Contain Element  ${aboutUsPageHeader}

User Clicks On Career Tab
    [Documentation]  User Should Be Able To Open Career Tab
    Click Element  ${moolyaCareer}

Verify Career Tab Is Opened Or Not
    Page Should Contain Element  ${careerPageHeader}

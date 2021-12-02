*** Settings ***
Documentation  All Variables are store here
Library  SeleniumLibrary


*** Variables ***
${url}  https://moolya.com/
${browser}  Chrome
${time}  5s
${moolyaLogo}  xpath=//img[@class="navbar-brand moolya-logo"]
${pageDown}  xpath=//body
${endkey}  \ue00f
# Home page Variables
${moolyaHomePage}  xpath= //a[@href="//moolya.com/Home"]
${weShouldTalk}  xpath=//button[text()='We should talk']
${buildSuperTeams}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-functional-tab"]
${preventBugs}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-performance-tab"]
${automateRightThings}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-automation-tab"]
${improveCoverage}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-security-tab"]
${remoteTeamsThatWorks}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-remote-teams-tab"]
${thisIsExciting}  xpath=//div[@id="v-pills-tab"]//button[@class="explore-solution-btn custom-btn"]
${viewMore}  xpath=//div[@class="broadcast__view-more"]//input[@class="custom-btn "]
${10kRun}  xpath=//a[@class="explore-solution-btn custom-btn"]
# Solution Page
${moolyaSolution}  id=moolyaSolution
# Solution page Moolya Power
${moolyaPower}  xpath=//a[text()='MOOLYA POWER']
${moolyaPowerTitle}  xpath=//h1[text()='Moolya Power']
${testOwnership}  xpath=//div[@id="v-pills-tab"]//button[@id="ownership-tab"]
${testLeadership}  xpath=//div[@id="v-pills-tab"]//button[@id="plug-play-tab"]
${testExpertise}  xpath=//div[@id="v-pills-tab"]//button[@id="provenAutomation-tab"]
# Solution page Moolya Lab
${startupTestLab}  xpath=//a[text()='STARTUP TEST LAB']
${startupTestLabText}  xpath=//p[@class="custom-disc ml-0"]
${ctoTime}  xpath=//div[@id="v-pills-tab"]//a[@id="tech-debt"]
${poTime}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-notification-tab"]
${hiringTime}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-messages-tab"]
${trainingTime}  xpath=//div[@id="v-pills-tab"]//a[@id="v-pills-web-tab"]
# Moolya products
${moolyaProducts}  id=moolyaProducts
${bugasuraTracker}  xpath=//a[text()='BUGASURA TRACKER']
${bugasuraReport}  xpath=//a[text()='BUGASURA REPORTER']
${moolyaLearning}  id=learning
${moolyaBlogs}  xpath=//a[text()='BLOGS']
${moolyaLeadership}  xpath=//a[text()='LEADERSHIP IN TESTING']
${moolyaDeepTest}  xpath=//a[text()='DEEP TEST']
# Moolya About us
${moolyaAboutUs}  xpath=//a[text()='ABOUT US']
${aboutUsPageHeader}  xpath= //h1[text()='SMARTER TOGETHER']
# Moolya Career
${moolyaCareer}  xpath=//a[text()='CAREER']
${careerPageHeader}  xpath=//h5[text()='Become a respected Leader']

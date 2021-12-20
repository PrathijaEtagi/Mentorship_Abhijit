*** Settings ***
Documentation  API Testing Keyword
Library  String
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary
Resource  ..\\..\\..\\App Locators\\SampleAPILocators.robot


*** Keywords ***
Create New Sessions
    [Documentation]  To Create New Session
    Create Session  NewSession  ${base_url}

Status Code Should Be 200
    [Documentation]  To Verify Status Code As 200
    Status Should Be  ${OKSuccessStatus}

Status Code Should Be 201
    [Documentation]  To Verify Status Code As 201
    Status Should Be  ${created}

Status Code Should Be 204
    [Documentation]  To Verify Status Code As 204
    Status Should Be  ${noContent}

Send Get Request For List Of Users
    [Documentation]  To Get List Of Users
    ${response1}  Get On Session  NewSession  ${users}
    Log To Console  ${response1.content}

Send Get Request By Time Delaying
    [Documentation]  To Get List Of All Users By Delaying In Time
    Get On Session  NewSession  ${users}  params=delay=3

Send Get Request Using Page Number
    [Documentation]  To Get List Of All Users Using Page Numbers
    ${response2}  Get On Session  NewSession  ${users}  params=${pageNo}
    Log To Console  ${response2.content}

To Get User Information By Id
    [Documentation]  To Get User From Id Number
    ${response3}  Get On Session  NewSession  ${users}${idNo}
    Log To Console  ${response3.content}

To Post New User
    [Documentation]  To Add New User
    ${body}  Create Dictionary  name=${name}  job=${job}
    ${header}  Create Dictionary  Content-Type=application/json
    ${response4}  Post On Session  NewSession  ${users}  json=${body}  headers=${header}
    Log To Console  ${response4.content}
    ${id}  Evaluate  $response4.json().get("id")
    Log To Console  ${id}
    Set Global Variable  ${id}

To Put New Job
    [Documentation]  To Change Job Of Newly Added User
    ${body}  Create Dictionary  name=${name}  job=${newjob}
    ${header}  Create Dictionary  Content-Type=application/json
    ${response5}  Put On Session  NewSession  ${users}${id}   json=${body}  headers=${header}
    Log To Console    ${response5.content}
    ${jobVerify}  Evaluate  $response5.json().get("job")
    Log To Console  ${jobVerify}
    Should Be Equal  ${newjob}  ${jobVerify}

To Delete User
    [Documentation]  To Delete User
    Delete On Session  NewSession  ${users}/${id}

To Register Using Email And Password
    [Documentation]  To Register Using Credentials
    ${body}  Create Dictionary  email=${email}  password=${password}
    ${header}  Create Dictionary  Content-Type=application/json
    ${response6}  Post On Session  NewSession  ${register}   json=${body}  headers=${header}
    Log To Console  ${response6.content}
    ${token}  Evaluate  $response6.json().get("token")
    Set Global Variable  ${token}

To Login Using Email And Password
    [Documentation]  To Login
    ${body}  Create Dictionary  email=${email}  password=${password}
    ${header}  Create Dictionary  Content-Type=application/json
    ${response7}  Post On Session  NewSession  ${login}   json=${body}  headers=${header}
    Log To Console  ${response7.content}
    ${loginToken}  Evaluate  $response7.json().get("token")
    Should Be Equal  ${loginToken}  ${token}

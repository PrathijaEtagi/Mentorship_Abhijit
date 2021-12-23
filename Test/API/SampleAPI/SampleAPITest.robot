*** Settings ***
Documentation  API Testing
Library  RequestsLibrary
Resource  Import.robot

Task Setup  Create New Sessions
# To Run This Test Use Command- robot Test/API/SampleAPI/SampleAPITest.robot


*** Test Cases ***
To Get List Of Users
    [Documentation]  To Get List Of All Users
    [Tags]  Test01
    Send Get Request For List Of Users
    Status Code Should Be 200

To Get List Of Users By Time Delaying
    [Documentation]  To Get List Of All Users By Delaying In Time
    [Tags]  Test02
    Send Get Request By Time Delaying
    Status Code Should Be 200

To Get List Of Page 2 Users
    [Documentation]  To Get List Of All Users Using Page Numbers
    [Tags]  Test03
    Send Get Request Using Page Number
    Status Code Should Be 200

To Get User Using Id Number
    [Documentation]  To Get User From Id Number
    [Tags]  Test04
    To Get User Information By Id
    Status Code Should Be 200

To Add New User
    [Documentation]  To Add New User
    [Tags]  Test05
    To Post New User
    Status Code Should Be 201

To Change Job Of The Added User
    [Documentation]  To Change Job Of Newly Added User
    [Tags]  Test06
    To Put New Job
    Status Code Should Be 200

To Delete The User
    [Documentation]  To Delete The User
    [Tags]  Test07
    To Delete User
    Status Code Should Be 204

To Register Using Credential
    [Documentation]  To Register
    [Tags]  Test08
    To Register Using Email And Password
    Status Code Should Be 200

To Login Using Credential
    [Documentation]  To Login
    [Tags]  Test09
    To Login Using Email And Password
    Status Code Should Be 200

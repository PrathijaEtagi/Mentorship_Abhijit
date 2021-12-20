*** Settings ***
Documentation  API Testing
Library  RequestsLibrary
Resource  BookApiResource.robot

Task Setup  Create Sessions
# robot Test\API\BookAPITest.robot


*** Test Cases ***
Initial Get Information
    [Documentation]  To Get Information
    [Tags]  Test01
    Send Get Request For Initial Information
    Status Code Should Be 200

Get API Status
    [Documentation]  To Get API Status
    [Tags]  Test02
    Check API Status
    Status Code Should Be 200

To Get The List Of Books
    [Documentation]  To Get The List Of Books
    [Tags]  Test03
    To Get All Available Book List
    Status Code Should Be 200

To Get Non Fictional Books
    [Documentation]  To Get Non Fictional Books
    [Tags]  Test04
    To Get All Non Fictional Books
    Status Code Should Be 200

To Get Single Book From List
    [Documentation]  To Get Only One Book
    [Tags]  Test05
    To Get Only Non Fictional Book Which Is Available In Stock
    Status Code Should Be 200

To Register To API Clients
    [Documentation]  To Register To API Clients
    [Tags]  Test06
    To Register New APL Client
    Status Code Should Be 201

To Order A Book
    [Documentation]  To Order The Book
    [Tags]  Test07
    To Order In Stock Non Fiction Book
    Status Code Should Be 201

To Get The List Of Ordered Books
    [Documentation]  To Get All Ordered Book
    [Tags]  Test08
    To Get All Ordered Books
    Status Code Should Be 200

To Get An Single Order
    [Documentation]  To Get Only One Order
    [Tags]  Test09
    To Get An Order Using OrderId
    Status Code Should Be 200

To Update Customer Name In Order
    [Documentation]  To Update Infromation In Order
    [Tags]  Test10
    To Change The Name Of Customer In An Order
    Status Code Should Be 204

To Check Whether Name Changed Or Not
    [Documentation]  To Check Whether Order Updated Or Not
    [Tags]  Test11
    To Verify Whether Customer Name Changed
    Status Code Should Be 200

To Delete The Order
    [Documentation]  To Delete The Order
    [Tags]  Test12
    To Delete Order
    Status Code Should Be 204

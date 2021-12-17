*** Settings ***
Documentation  API Testing
Library  RequestsLibrary
Library    OperatingSystem
Library    String
Resource  Resource.robot

Task Setup  Create Sessions



*** Test Cases ***
Initial Get Information
    Send Get Request For Initial Information
    Status Code Should Be 200

Get API Status
    Check API Status
    Status Code Should Be 200

To Get The List Of Books
    To Get All Available Book List
    Status Code Should Be 200

To Get Non Fictional Books
   To Get All Non Fictional Books
   Status Code Should Be 200

To Get Single Book From List
    To Get Only Non Fictional Book Which Is Available In Stock
    Status Code Should Be 200

To Register To API Clients
   To Register New APL Client
   Status Code Should Be 201

To Order A Book
    To Order In Stock Non Fiction Book
    Status Code Should Be 201

To Get The List Of Ordered Books
    To Get All Ordered Books
    Status Code Should Be 200

To Get An Single Order
    To Get An Order Using OrderId
    Status Code Should Be 200

To Update Customer Name In Order
    To Change The Name Of Customer In An Order
    Status Code Should Be 204

To Check Whether Name Changed Or Not
    To Verify Whether Customer Name Changed
    Status Code Should Be 200

To Delete The Order
    To Delete Order
    Status Code Should Be 204
*** Settings ***
Documentation  API Testing
Library  RequestsLibrary


*** Variables ***
${base_url}  https://reqres.in/api
${users}  /users
${OKSuccessStatus}  200
${created}  201
${noContent}  204
${pageNo}  page=2
${idNo}  /5
${name}  Abhi
${job}  Leader
${newjob}  Teacher
${email}  eve.holt@reqres.in
${password}  pistol
${register}  register
${login}  login

*** Settings ***
Library    RequestsLibrary

*** Variables ***
${base_url}    https://restful-booker.herokuapp.com


*** Test Cases ***
Authontification user
    Create Session    auth    ${base_url}
    ${body}    Create Dictionary    username=admin     password=password123
    ${response}    POST On Session    auth    /auth    data=${body}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

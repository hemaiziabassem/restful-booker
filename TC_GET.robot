*** Settings ***
Library    RequestsLibrary



*** Variables ***
${base_url}    https://restful-booker.herokuapp.com
${book_id}    5





*** Test Cases ***
Get Books
    Create Session    Get_Books    ${base_url} 
    ${response}    Get Request       Get_Books    /booking
    Log To Console     ${response.status_code}
    Log To Console    ${response.content}


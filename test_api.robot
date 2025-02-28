*** Settings ***
Library  RequestsLibrary


*** Variables ***
${BASE_URL}  http://127.0.0.1:5000
${DRINK_ID}  None
${DRINK_NAME}  Fanta
${DRINK_DESCRIPTION}  That orange drink


*** Keywords ***
Get Drinks
  ${response}=  GET  ${BASE_URL}/drinks
  RETURN  ${response}


Create Drink
  [Arguments]  ${name}  ${description}
  ${body}  Create Dictionary  name=${name}  description=${description}
  ${response}  POST  ${BASE_URL}/drinks  json=${body}
  RETURN  ${response}


Get Drink By ID
  [Arguments]  ${id}
  ${response}=  GET  ${BASE_URL}/drinks/${id}
  RETURN  ${response}


Delete Drink
  [Arguments]  ${id}
  ${response}=  DELETE  ${BASE_URL}/drinks/${id}
  RETURN  ${response}


*** Test Cases ***
#Test GET /drinks
Get All Drinks
  ${response}=  Get Drinks
  Should Be Equal As Numbers    ${response.status_code}    200
  Log    ${response.json}

#Test POST/drinks
Create New Drink
  ${response}=  Create Drink    ${DRINK_NAME}    ${DRINK_DESCRIPTION}
  Should Be Equal As Numbers    ${response.status_code}    200
  ${drink_id}=  Set Variable    ${response.json()['id']}
  Set Suite Variable    ${DRINK_ID}  ${drink_id}

#Test GET /drinks/${DRINK_ID}
Get Single Drink
  ${response}=  Get Drink By ID    ${DRINK_ID}
  Should Be Equal As Numbers    ${response.status_code}    200
  Log    ${response.json}

#Test DELETE /drinks/${DRNK_ID}
Delete Drink
  ${response}=  Delete Drink    ${DRINK_ID}
  Should Be Equal As Numbers    ${response.status_code}    200
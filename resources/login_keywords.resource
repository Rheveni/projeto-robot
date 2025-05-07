*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
I nagivate to the login page
    [Arguments]    ${URL}
    Go to    ${URL} 

I Input correct Credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}

I Input wrong Credentials
    [Arguments]    ${WRONG_USERNAME}    ${WRONG_PASSWORD}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${WRONG_USERNAME}
    Input Text    id=password    ${WRONG_PASSWORD}


I Click on the Login Button
    Click Button    id=login-button


I am able view the home page
    ${location}    Get Location
    Should Be Equal    ${location}    https://www.saucedemo.com/inventory.html


I am able to see the expected error message
    [Arguments]    ${ERROR_MESSAGE}
    Wait Until Element Contains   class=error-message-container  ${ERROR_MESSAGE}


I input only the username
    [Arguments]    ${USERNAME}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${USERNAME}


I input only the password
    [Arguments]    ${PASSWORD}
    Wait Until Element Is Visible    id=password
    Input Text    id=password    ${PASSWORD}


I input no credentials
    Wait Until Element Is Visible    id=user-name

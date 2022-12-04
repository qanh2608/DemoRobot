*** Settings ***
Library     Selenium2Library

*** Keywords ***
Open New Browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Sleep    10s

Click
    [Arguments]     ${locator}
    Wait Until Element Is Visible    ${locator}
    Capture Element Screenshot    ${locator}    EMBED
    Click Element    ${locator}
    Sleep    5s
    Capture Page Screenshot     EMBED

Input Value
    [Arguments]     ${locator}      ${value}
    Wait Until Element Is Visible    ${locator}
    Capture Element Screenshot    ${locator}    EMBED
    Input Text    ${locator}    ${value}
    Sleep    5s
    Capture Page Screenshot     EMBED

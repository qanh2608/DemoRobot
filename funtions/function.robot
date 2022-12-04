*** Settings ***
Resource    ../common/common.robot
Resource    ../locators/locator.robot

*** Keywords ***
Click Video Title
    [Arguments]     ${vidName}
    ${log}=     Run Keyword And Return Status    Page Should Contain Element    ${vidTitle}
    IF    "${log}" == "False"
        Close Browser
    ELSE
         Click    ${vidTitle}
    END
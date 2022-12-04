*** Settings ***
Resource    ../common/common.robot
Resource    ../locators/locator.robot
Resource    ../funtions/function.robot

*** Variables ***
${vidName}      Dưới Ánh Đèn Sân Khấu - Top 4
${vidFullname}  Nổi da gà khi Top 4 cùng hòa giọng Dưới Ánh Đèn Sân Khấu | The Masked Singer Vietnam [Livestage]
*** Test Cases ***
Demo1
    Open New Browser    ${url}    ${browser}
    Input Text    ${txtSearch}    ${vidName}
    Click    ${btnSearch}
    Sleep    10s
    Click Video Title    ${vidFullname}
    Close All Browsers
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Main
    Logger    Hello World

*** Keywords ***
Logger
    [Arguments]    ${message}
    Log To Console     ${message}

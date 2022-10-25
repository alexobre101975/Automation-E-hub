*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-123 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test TV_Entertainment E-hub
    [Tags]    Automation

    Open App
    #NGG-TC-123
    Enter TV - Channel Navigation - Channel Down
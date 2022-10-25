*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-122 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test TV_Entertainment E-hub
    [Tags]    Automation

    Open App
    # NGG-TC-122
    Enter TV - Channel Navigation - Manual number entry

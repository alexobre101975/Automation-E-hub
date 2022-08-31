*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords3.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test TV_Guide_Record
    [Tags]    Automation

    Open App
    Page Home E-hub
    Enter the window TV

    #NGG-TC-78
    TV - Guide - Actions - Go to this channel
    #NGG-TC-93
    TV - Guide - Actions - Record this show










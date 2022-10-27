*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-98 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test TV_Guide_Record
    [Tags]    Automation

    Open App
    Enter the window TV

    #NGG-TC-98
    TV - Guide - Actions - Record this show










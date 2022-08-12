*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test TV_Entertainment
    [Tags]    Automation

    Page Home E-hub
    #NGG TCC-44
    Enter the window TV
    # NGG TCC-45
    Start TV - Second time - Tile
    #NGG TCC-48
    Enter TV - Channel Navigation - Channel Up
    #NGG-TC-49
    Enter TV - Channel Navigation - Channel Down
    #NGG-TC-50
    Enter TV - Channel Navigation - Manual number entry

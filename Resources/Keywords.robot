*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}


Page Home E-hub
     Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
     Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        Entertainment
#NG TCC-44
Enter the window TV
    Press Keycode       22
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Page Should Contain Text    TV
    Press Keycode       23
    Wait Until Element Is Visible      id=com.sentrics.engage360:id/ivAppIcon
    Page Should Contain Text    Icon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     2
    Press Keycode       4
    Press Keycode       4
#
## NG TCC-45
Start TV - Second time - Tile
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivAppIcon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Page Should Contain Text    TV
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/clMain
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     2
    Press Keycode       12
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     5
    Press Keycode       4
    Press Keycode       4

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivAppIcon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Page Should Contain Text    TV
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     5

    Press Keycode       9
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     2
    Press Keycode       4
    Press Keycode       4

#NG TCC-48
Enter TV - Channel Navigation - Channel Up
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivAppIcon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Page Should Contain Text    TV
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/clMain
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber           2

# Be located on the first available channel and then press button channel up
    Press Keycode       92
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber           3

# Be located on the last available channel and then press button channel up
    Press Keycode       8
    Press Keycode       8
    Press Keycode       10
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber           113
    Press Keycode       92
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber           2

 # Press the channel up button for five times
    Press Keycode       92
    Press Keycode       92
    Press Keycode       92
    Press Keycode       92
    Press Keycode       92

    # Return Channel #2
    Press Keycode       9
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/pauseLayout
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/clSubtitles
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/llNotifications
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text         id=com.sentrics.engage360:id/tvChannelNumber            2

    Press Keycode       4
    Press Keycode       4
    Wait Until Element Is Visible       	id=com.sentrics.engage360:id/tvAppName
    Element Should Contain Text             id=com.sentrics.engage360:id/tvAppName      TV


#NGG-TC-49
Enter TV - Channel Navigation - Channel Down
    Press Keycode       23
    Wait Until Element Is Visible      id=com.sentrics.engage360:id/ivAppIcon
    Page Should Contain Text    Icon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Page Should Contain Text    TV
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     2

# Be located on the first available channel and then press button channel down
    Press Keycode        93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     113

# Be located on the last available channel and then press button channel down
    Press Keycode        93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     112

# Be located on the second available channel and then press button channel down

    Press Keycode        92
    Press Keycode        92
    Press Keycode        92
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     3
    Press Keycode         93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     2

# Press the channel down button for five times
    Press Keycode       93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     113
    Press Keycode       93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     112
    Press Keycode       93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     111
    Press Keycode       93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     110
    Press Keycode       93
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     109

    # Back channel 2
    Press Keycode       9
    Wait Until Element Is Visible               id=com.sentrics.engage360:id/clSubtitles
    Wait Until Element Is Visible               id=com.sentrics.engage360:id/llNotifications
    Wait Until Element Is Visible               id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text                 id=com.sentrics.engage360:id/tvChannelNumber       2
    # Back TV Window
    Press Keycode       4
    Press Keycode       4
    Wait Until Element Is Visible       	id=com.sentrics.engage360:id/tvAppName
    Element Should Contain Text             id=com.sentrics.engage360:id/tvAppName      TV


#NGG-TC-50
Enter TV - Channel Navigation - Manual number entry
    Press Keycode       23
    Wait Until Element Is Visible      id=com.sentrics.engage360:id/ivAppIcon
    Page Should Contain Text    Icon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Page Should Contain Text    TV
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     2
    # Press Number 3
    Press Keycode       10
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     3
    # Press Number 5
    Press Keycode       12
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     5
    # Press Number 25
    Press Keycode       9
    Press Keycode       12
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     25

    # Press Number 125
    Press Keycode   8
    Press Keycode   9
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text      id=com.sentrics.engage360:id/tvChannelNumber     12
    Press Keycode   12

    Wait Until Element Is Visible           id=com.sentrics.engage360:id/pauseLayout
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/clSubtitles
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/llNotifications
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text             id=com.sentrics.engage360:id/tvChannelNumber     5

    # Press Number 0
    Press Keycode   7
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/pauseLayout
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/clSubtitles
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/llNotifications
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text             id=com.sentrics.engage360:id/tvChannelNumber     5

    # Back Number 2
    Press Keycode       9
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/clSubtitles
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/llNotifications
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvChannelNumber
    Element Should Contain Text             id=com.sentrics.engage360:id/tvChannelNumber     2

    # Back TV Window
    Press Keycode   4
    Press Keycode   4



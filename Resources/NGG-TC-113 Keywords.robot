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

Enter the window TV
    Press Keycode       22
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber

# NGG-TC-113
TV - Guide - Actions - Go to this channel

#1 Open Guide
    Press Keycode       183
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/opacityFilter
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/vsShows
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivChannelLogo
    Wait Until Element Is Visible        id=com.sentrics.engage360:id/llHeaders
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
#
# 2 Select a serie
    Press Keycode       20
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22

# 3 Press Record button
    Press Keycode       23

# 4 Press "Go to this channel"
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnGoToChannel
    Page Should Contain Text        GO TO THIS CHANNEL
    Press Keycode       23

# Back TV Window
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Press Keycode           4
    Press Keycode           4
    Press Keycode           4



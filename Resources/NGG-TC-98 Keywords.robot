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
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       22
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivAppIcon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivAppIcon
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber

# NGG-TC-98
TV - Guide - Actions - Record this show

# Open Guide
    Press Keycode       183
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/opacityFilter
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/vsShows
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivChannelLogo
    Wait Until Element Is Visible        id=com.sentrics.engage360:id/llHeaders
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate

# 2 Select a serie
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22


#  Press Record button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowSchedule
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Press Keycode       23


#  Press "Record this show"
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnGoToChannel
    Page Should Contain Text        GO TO THIS CHANNEL
    Press Keycode       22
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnGoToChannel
    Page Should Contain Text        GO TO THIS CHANNEL
    Press Keycode       23

#  Press Record button again
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowTags
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowShortDescription
    Press Keycode       23


#  Press "Cancel recording"
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowOptionsTitle
    Press Keycode       22
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/llButtons
    Press Keycode       23

# Back TV Window
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Press Keycode           4
    Press Keycode           4
    Press Keycode           4
    Press Keycode           4

 # Enter TV Window
     Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
     Press Keycode           23
     Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber

 # Open Guide
    Press Keycode       183

 # Enter Channel 89 for record this show
    Press Keycode       15
    Press Keycode       14


 #  Select a Show
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowTags
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvShowShortDescription

    Press Keycode       21
    Press Keycode       23
    Press Keycode       23
    Press Keycode       22
    Press Keycode       22
    Press Keycode       23

# Press Record button
    Press Keycode       22
    Press Keycode       23

# Do you Want to extend this recording
# click button "NO"
    Press keycode       23


# Press "Record this show"
    Press Keycode       23

# Press Record button again
    Press Keycode       22


#  Press "Cancel recording"
    Press Keycode       23


# Back TV Window
    Press Keycode           4
 #   Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber
    Press Keycode           4
    Press Keycode           4
    Press Keycode           4



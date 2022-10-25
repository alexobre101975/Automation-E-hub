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

#NGG-TC-124
Enter TV - Channel Navigation - Channel Up
    Press Keycode       22
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/clMain
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber


# Be located on the first available channel and then press button channel up
    Press Keycode       92
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber

# Be located on the last available channel and then press button channel up
    Press Keycode       8
    Press Keycode       8
    Press Keycode       10
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber

    Press Keycode       92
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvChannelNumber

 # Press the channel up button for five times
    Press Keycode       92
    Press Keycode       92
    Press Keycode       92
    Press Keycode       92
    Press Keycode       92

    # Return Channel #2
    Press Keycode       9

        # Back TV Window
    Press Keycode       4
    Press Keycode       4
    Press Keycode       4

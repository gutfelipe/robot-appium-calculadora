*** Setting ****
Library     AppiumLibrary
Library     String


# All Step Definitions
Resource            ../step_definition/calculadora.robot

# All Screens
Resource    ../screen/calculadora.robot 

# YAML Filepath defautl
Variables  ../elements/android.yaml
#Variables  ../elements/ios.yaml

*** Variables ***
${environmentToRunTest}    LOCAL

${URL}               http://localhost:4723/wd/hub
${DEVICENAME}        Google Pixel 3
${UDID}              emulator-5554
${APP_ANDROID}       ${EXECDIR}/app/app-release.apk
${DEVICETYPE}        ANDROID
#${APP_IOS}           ${EXECDIR}/app/


*** Keywords ***
Open App
    Log To Console    ${DEVICETYPE}
    Run Keyword If    '${DEVICETYPE}'=='ANDROID'  Import Variables    ${EXECDIR}/elements/android.yaml
    ...     ELSE IF   '${DEVICETYPE}'=='IOS'    Import Variables    ${EXECDIR}/elements/ios.yaml

    Log To Console    ${environmentToRunTest}
    [Documentation]   switch between local and Browserstack testsetup
    Run Keyword If    '${environmentToRunTest}'=='LOCAL'           Setup Local
    ...     ELSE IF   '${environmentToRunTest}'=='BROWSERSTACK'    Setup Browserstack   

    Wait Until Element Is Visible   ${calculate_page.screen_result}    200

Setup local
    Run Keyword If    '${DEVICETYPE}'=='ANDROID'  Setup local Android
    ...     ELSE IF   '${DEVICETYPE}'=='IOS'    Setup local Ios
    
Setup local Android
    Open Application    ${URL}
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=${DEVICENAME}
    ...                 app=${APP_ANDROID}
    ...                 udid=${UDID}

Setup local Ios
    Open Application    ${URL}
    ...                 automationName=XCUITest
    ...                 platformName=iOS
    ...                 deviceName=${DEVICENAME}
    ...                 app=${APP_IOS}
    ...                 udid=${UDID}
    ...                 appium:autoAcceptAlerts=true

Setup Browserstack 
    ${remoteUrl}                Set Variable        http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com/wd/hub

    Run Keyword If    '${DEVICETYPE}'=='ANDROID'  Setup Browserstack Android "${remoteUrl}"
    ...     ELSE IF   '${DEVICETYPE}'=='IOS'    Setup Browserstack Ios "${remoteUrl}"

Setup Browserstack Android "${remoteUrl}"
    Open Application      ${remoteUrl}  
    ...  appium:app=${APP_BS_ANDROID} 
    ...  platformName=android  
    ...  deviceName=${DEVICENAME}
    ...  forcelocal=true 

Setup Browserstack Ios "${remoteUrl}"
    Open Application      ${remoteUrl}  
    ...  appium:app=${APP_BS_IOS}  
    ...  platformName=ios  
    ...  appium:deviceName=${DEVICENAME}
#    ...  appium:os_version=12
    ...  appium:autoAcceptAlerts=true
    ...  forcelocal=true 

Fechar App
    Close Application


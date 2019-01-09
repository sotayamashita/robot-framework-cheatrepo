*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${USERNAME}=
${ACCESS_LEY}=
# PC
${BROWSER} =       Chrome
${REMOTE_URL} =    http://${USERNAME}:${ACCESS_LEY}@hub.browserstack.com/wd/hub
${DC} =            os:OS X,os_version:Mojave,browser:${BROWSER},browser_version:12.15,browserstack.local:false

# Mobile
# ${BROWSER} =       Safari
# ${REMOTE_URL} =    http://${USERNAME}:${ACCESS_LEY}@hub.browserstack.com/wd/hub
# ${DC} =            os:ios,os_version:11.4,device:iPhone 6S,real_mobile:true,rowserstack.local:false

*** Test Cases ***
Main Test Case
    Open Browser   url=https://google.com    browser=${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=${DC}
    Capture Page Screenshot
    [Teardown]    Close Browser

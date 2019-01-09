*** Settings ***
Library     SeleniumLibrary

** Test Cases ***
Robot Framework is ran inside the container
    Log To Console    Hello from a Docker container
    Open Chrome Browser
    [Teardown]    Close Browser


*** Keywords ***
Open Chrome Browser
    [Documentation]  Create the object which to instantiate the Chrome browser.
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    headless
    Create Webdriver    Chrome    chrome_options=${chrome_options}    executable_path=/usr/local/bin/chromedriver

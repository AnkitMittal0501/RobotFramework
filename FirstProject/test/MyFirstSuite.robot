*** Settings ***
Library                   SeleniumLibrary
Suite Setup               Log        Suite Started
Suite Teardown            Log        Suite Teardown
Test Setup                Log        Inside Test Setup
Test Teardown             Log        After Test Execution                       
Default Tags        sanity    
*** Test Cases ***

MyFirstTest
                [Tags]    Smoke
                Log        Hello World
MySecondTest
                Log        Hello World MySecondTest
                [Tags]    Regression
                
MyThirdTest
                Log        Hello World MyThirdTest
MyForthTest
                Log        Hello World MyForthTest
MyFifthTest
                Log        Hello World MyFifthTest
MySixthTest
                Log        Hello World MySixthTest
MySeventhTest
                Log        Hello World MySeventhTest


# MyFirstTest
                          # Log To Console                This is My first message
                          # Log                           Start Test

                          # Open Browser                  http://rediffmail.com                         chrome
                          # # wait for 5 seconds
                          # Set Selenium Implicit Wait    5
                          # Maximize Browser Window
                          # Set Browser Implicit Wait     10
                          # Click Element                 class=divicon
                          # Input Text                    id=login1                                     ankitkrmittal
                          # Input Text                    id=password                                   vidhu
                          # Click Button                  name=proceed
                          # Log                           Test Completed
                          # Close Browser

# MyVariableTest
                          # Log To Console                @{LISTOFVARIABLES}[0]
                          # Log To Console                Test with dynamic values
                          # Log                           Start Test

                          # Open Browser                  ${URL}                                        chrome
                          # # wait for 5 seconds
                          # Set Selenium Implicit Wait    5
                          # Maximize Browser Window
                          # Set Browser Implicit Wait     10
                          # Click Element                 class=divicon
                          # Input Text                    id=login1                                     @{LISTOFVARIABLES}[0]
                          # Input Text                    id=password                                   @{LISTOFVARIABLES}[1]
                          # Click Button                  name=proceed
                          # Log                           Test Completed
                          # # Close Browser
# MyVariableTestWithDict
                          # Log To Console                @{LISTOFVARIABLES}[0]
                          # Log To Console                Test with dynamic values
                          # Log                           Start Test

                          # Open Browser                  ${URL}                                        chrome
                          # # wait for 5 seconds
                          # Set Selenium Implicit Wait    5
                          # Maximize Browser Window
                          # Set Browser Implicit Wait     10
                          # LoginKW
                          # Log                           Test Completed
                          # # Use of Env Variable
                          # Log To Console                This test executed by %{username} on %{os}
                          # Close Browser




*** Variables ***
${URL}                    http://www.rediffmail.com
@{LISTOFVARIABLES}        ankitkrmittal                 vidhu
&{CREDENTIALS}            username=ankitkrmittal        password=vidhu

*** Keywords ***
LoginKW
                          Click Element                 class=divicon
                          Input Text                    id=login1                                     &{CREDENTIALS}[username]
                          Input Text                    id=password                                   &{CREDENTIALS}[password]
                          Click Button                  name=proceed


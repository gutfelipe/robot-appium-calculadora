*** Settings ***
Resource            ../resources/base.robot

Test Setup    Run keywords    
...    Open App 


Test Teardown  Fechar App

#make your scenario
*** Test Cases ***
Scenario: calculation 1 
  [Tags]   custom_example_sum
  Given that I set "1" 
  Given click sum
  Given that I set "1" 
  When I click in equeals
  Then I check value is "2"

Scenario: calculation 2 
  [Tags]   custom_example_subtract
  Given that I set "1" 
  Given click subtract
  Given that I set "1" 
  When I click in equeals
  Then I check value is "0"

Scenario: calculation 3 
  [Tags]   custom_example_division
  Given that I set "1" 
  Given click division
  Given that I set "1" 
  When I click in equeals
  Then I check value is "1"

Scenario: calculation 4 
  [Tags]   custom_example_multiplication
  Given that I set "1" 
  Given click multiplication
  Given that I set "1" 
  When I click in equeals
  Then I check value is "1"

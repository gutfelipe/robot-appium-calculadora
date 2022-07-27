*** Settings ***
Resource            ../resources/base.robot

Test Setup    Run keywords    
...    Open App 


Test Teardown  Fechar App

*** Test Cases ***
Scenario: Subtract calculation 
  [Tags]   simple_subtract
  Given that I put "1" and click subtract after in "1"
  When I click in equeals
  Then I check value is "0"

Scenario: subtract calculation 2 
  [Tags]   simple_subtract_2
  Given that I put "8" and click subtract after in "5"
  When I click in equeals
  Then I check value is "3"

Scenario: subtract calculation 3 
  [Tags]   dot_subtract_3
  Given that I put "8.5" and click subtract after in "5.1"
  When I click in equeals
  Then I check value is "3.4"
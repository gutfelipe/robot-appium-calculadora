*** Settings ***
Resource            ../resources/base.robot

Test Setup    Run keywords    
...    Open App 


Test Teardown  Fechar App

*** Test Cases ***
Scenario: Division calculation 
  [Tags]   simple_division
  Given that I put "1" and click division after in "1"
  When I click in equeals
  Then I check value is "1"

Scenario: Division calculation 2 
  [Tags]   simple_division_2
  Given that I put "8" and click division after in "5"
  When I click in equeals
  Then I check value is "1.6"

Scenario: Division calculation 3 
  [Tags]   dot_division_3
  Given that I put "8.5" and click division after in "5.1"
  When I click in equeals
  Then I check value is "1.666667"
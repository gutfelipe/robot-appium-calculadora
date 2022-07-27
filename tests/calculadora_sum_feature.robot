*** Settings ***
Resource            ../resources/base.robot

Test Setup    Run keywords    
...    Open App 


Test Teardown  Fechar App

*** Test Cases ***
Scenario: Sum calculation 
  [Tags]   simple_sum
  Given that I put "1" and click sum after in "1"
  When I click in equeals
  Then I check value is "2"

Scenario: Sum calculation 2 
  [Tags]   simple_sum_2
  Given that I put "5" and click sum after in "5"
  When I click in equeals
  Then I check value is "10"

Scenario: Sum calculation 3 
  [Tags]   simple_sum_3
  Given that I put "55" and click sum after in "5"
  When I click in equeals
  Then I check value is "60"

Scenario: Sum calculation 4 
  [Tags]   dot_sum_4
  Given that I put "5.5" and click sum after in "5"
  When I click in equeals
  Then I check value is "10.5"
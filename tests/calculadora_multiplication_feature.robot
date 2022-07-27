*** Settings ***
Resource            ../resources/base.robot

Test Setup    Run keywords    
...    Open App 


Test Teardown  Fechar App

*** Test Cases ***
Scenario: Multiplication calculation 
  [Tags]   simple_multiplication
  Given that I put "1" and click multiplication after in "1"
  When I click in equeals
  Then I check value is "1"

Scenario: Multiplication calculation 2 
  [Tags]   simple_multiplication_2
  Given that I put "8" and click multiplication after in "5"
  When I click in equeals
  Then I check value is "40"

Scenario: Multiplication calculation 3 
  [Tags]   dot_multiplication_3
  Given that I put "8.5" and click multiplication after in "5.1"
  When I click in equeals
  Then I check value is "43.35"
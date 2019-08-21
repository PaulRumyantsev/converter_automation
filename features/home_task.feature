@home
Feature: Home task

  Background:
    Given I click on Got it button
    And I land on Area screen


  Scenario Outline:

    When I select "Sq Kilometre" from the left column
    Then I see "Sq Kilometre" in From header
    And I click on Clear button
    And I press "1" on soft keyboard
    Then I click on "<target>" in To field
    Then I click on From field
    Then I get "<result>" in To field



    Examples:
      |target|result|
      |Sq Kilometre|1|
      |Sq Metre    |1000000|
      |Hectare|100|


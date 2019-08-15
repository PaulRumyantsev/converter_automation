Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on Area screen


    Scenario: User is able to call menu by swiping
      When I swipe in menu
      Then I see app menu

    @wip
    Scenario Outline:
      When I swipe in menu
      And I select "<target>" from menu
      Then I land on "<results>" screen

      Examples:
      |target|results|
      |Power|Power|
      |Volume|Volume|
      |Currency|Currency|
Feature: Bond Details Screen
    After:
        Then clean up

    Scenario: Users should see bond Details
    Given the app is running
    And I wait 
    When I tap bond list
    And I wait 
    Then I see bond details page

    Scenario: Users should see bond pros & cons
    Given the app is running
    And I wait 
    When I tap bond list
    And I wait 
    Then I tap {'Pros & Cons'} text
    And I see {'Liquidity: Adequate'} text
    And I see {'Moderate profitability metrics'} text
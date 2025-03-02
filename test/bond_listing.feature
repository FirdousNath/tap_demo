import 'package:tap_demo/features/bonds_listing/presentation/widgets/bonds_list.dart';

Feature: Bond Listing Screen
   After:
        Then clean up
    
    Scenario: Users should see list of Bonds
    Given the app is running
    Then I see {CircularProgressIndicator} widget
    When I wait
    Then I see {'Home'} text
    And I see {'Search by Issuer Name or ISIN'} text
    And I see {'SUGGESTED RESULTS'} text
    Then I see {BondsListView} widget
    And I dont see {CircularProgressIndicator} widget

    Scenario: Users should be able to search Bonds
    Given the app is running
    Then I see {CircularProgressIndicator} widget
    When I wait
    Then I see {BondsListView} widget
    When I enter {'7172'} text into {0} text field
    And I wait 
    Then I see {2} bonds list
    And I see {'SEARCH RESULTS'} text

    Scenario: Users should No bonds found when search query doesnot match
    Given the app is running
    Then I see {CircularProgressIndicator} widget
    When I wait
    Then I see {BondsListView} widget
    When I enter {'112'} text into {0} text field
    And I wait 
    Then I see {0} bonds list
    And I see {'No bonds found'} text
    And I see {'SEARCH RESULTS'} text

    Scenario: Users should be navigated to details page
    Given the app is running
    Then I see {CircularProgressIndicator} widget
    When I wait
    Then I see {BondsListView} widget
    When I tap bond list
    And I wait 
    Then I see {'ISIN: INE06E507157'} text
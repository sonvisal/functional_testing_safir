Feature: Test add favorite page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test favorite success
    Given I am not connected
    Then I click on the button ".fa-heart-o"
    Then I should see text "Login"

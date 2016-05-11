Feature: Test checkout page

  As a [role]
  I want [feature]
  So that [benefit]

  @dev
  Scenario: Test add to card page
    When I go to the checkout page
    Then I click on the button ".btn-quickview"
    Then I click on the button "#addtocart"
    Then I should see class ".fa-check"
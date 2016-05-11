Feature: Test checkout by remember page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test checkout page
    When I navigate to ""
    Then I click on the button ".btn-quickview"
    Then I click on the button "#addtocart"
    Then I should see class ".fa-check"
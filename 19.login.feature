Feature: Test Checkout page

  As a [role]
  I want [feature]
  So that [benefit]
    #User is logged in
    #User has a non-empty cart

  @dev
  Scenario: Test a valid user
    Then I click on the button ".img-shopcart"
    Then I click on the button ".btn_checkout"
    Then I fill the field  "#newAddress" with value ""
    Then I click on the button "#btnAdd"
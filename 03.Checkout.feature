Feature: Test checkout redirected to the bank website page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test checkout redirected to the bank websitepage
    Then I click on the button ".img-shopcart"
    Then I click on the button ".btn_checkout"
    Then I fill the field  "#newAddress" with value "Phnom Penh"
    Then I fill the field  "#newemail" with value "Noolab@gmail.com"
    Then I fill the field  "#newphone" with value "093654734"
    Then I click on the button "#btnAdd"
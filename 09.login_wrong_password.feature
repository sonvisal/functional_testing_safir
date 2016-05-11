Feature: Test login wrong password page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test login wrong password success
    Given I am not connected
    When I navigate to "/profile"
    Then I click on the button ".dropdown"
    When I try to connect with username "mama@gmail.com" and password ""
    Then I click on the button ".btn_login"
    Then I should see class ".loginError"
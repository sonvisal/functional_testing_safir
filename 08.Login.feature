Feature: Test login any page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test login any page success
    Given I am not connected
    When I navigate to "/profile"
    Then I click on the button ".dropdown"
    When I try to connect with username "mama@gmail.com" and password "root"
    Then I should see url "profile"
    Then I click on the button ".btn_login"
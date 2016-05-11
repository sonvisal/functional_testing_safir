Feature: Test login by socail page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test login by socail success
    Given I am not connected
    When I navigate to "/profile"
    Then I click on the button ".dropdown"
    Then I click on the button ".insta-login"
    When I navigate to "/profile"
    Then I fill the field "#firstname" with value "mamachange"
    Then I fill the field "#lastname" with value "cissejjbrilchange"
    Then I fill the field "#email" with value "mamachange@gmail.com"
    Then I click on the button "#updateProfile"
Feature: Test User is logged change profile page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test User is logged change profile
    When I navigate to "/login"
    When I try to connect with username "mama@gmail.com" and password "root"
    When I navigate to "/profile"
    Then I click on the button ".btn-profile-black"
    Then I click on the button "#en"
    Then I fill the field "#firstname" with value "mamachange"
    Then I fill the field "#lastname" with value "cissejjbrilchange"
    Then I fill the field "#email" with value "mamachange@gmail.com"
    Then I click on the button "#updateProfile"
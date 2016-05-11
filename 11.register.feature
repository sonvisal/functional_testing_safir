Feature: Test register page

    As a [role]
    I want [feature]
    So that [benefit]

    @dev
    Scenario:  check register field
        When I navigate to "/login"
        Then I should see the button ".btn-register"
        Then I should see the field "#username"
        Then I should see the field "#first_name"
        Then I should see the field "#last_name"
        Then I should see the field "#pays"
        Then I should see the field "#ville"
        Then I should see the field "#email"
        Then I should see the field "#password"
        Then I should see the button ".btn-register"

    @dev
    Scenario: register success
        When I navigate to "/login"
        Then I fill the field "#username" with value "daratest"
        Then I fill the field "#first_name" with value "dara"
        Then I fill the field "#last_name" with value "test"
        Then I fill the field "#pays" with value "cambodia"
        Then I fill the field "#ville" with value "phnom penh"
        Then I fill the field "#email" with value "dara10@gmail.com"
        Then I fill the field "#password" with value "dara10@gmail.com"
        Then I click on the button ".btn-register"

    @dev
    Scenario: register failed
        When I navigate to "/login"
        Then I fill the field "#username" with value ""
        Then I fill the field "#first_name" with value "dara"
        Then I fill the field "#last_name" with value "test"
        Then I fill the field "#pays" with value "cambodia"
        Then I fill the field "#ville" with value "phnom penh"
        Then I fill the field "#email" with value "dara10@gmail.com"
        Then I fill the field "#password" with value ""
        Then I click on the button ".btn-register"
        Then I should see the button ".growl-bottom-right"
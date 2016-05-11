Feature: Test register failed page

    As a [role]
    I want [feature]
    So that [benefit]


    @dev
    Scenario: register failed
        When I navigate to "/login"
        Then I fill the field "#username" with value ""
        Then I fill the field "#first_name" with value "dara"
        Then I fill the field "#last_name" with value "test"
        Then I fill the field "#pays" with value "cambodia"
        Then I fill the field "#ville" with value ""
        Then I fill the field "#email" with value ""
        Then I fill the field "#password" with value ""
        Then I click on the button ".btn-register"
        Then I should see the button ".growl-bottom-right"
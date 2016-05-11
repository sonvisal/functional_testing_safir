Feature: Test Search page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test Search success
    Then I fill the field ".input-search" with value "Aedes de Venustas Eau de "
    Then I click on the button ".kesearch"
    Then I should see class ".home-ads-list"
    Then I should see class ".caption"


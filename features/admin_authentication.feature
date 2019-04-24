Feature: Verify Admin Authentication
  As a admin
  I dont want unauthorized people accessing admin pages
  So that my data stays secure

  Background: There exists a tutee and courses
    Given the following admins exist:
      |id | password             |
      |1  | secureAdminPassword  |

    And I am on the admin landing page


  Scenario: Admin with password can visit home page
    When I fill in "password" with "secureAdminPassword"
    And press "Submit"
    Then I should be on the admin home page


  Scenario: Admin without password can visit home page
    When I fill in "password" with "wrongAdminPassword"
    And press "Submit"
    Then I should be on the admin landing page

  Scenario: No one can get to admin pages without logging in first
    Given I am on the admin landing page
    When I am on the admin home page
    Then I should be on the admin landing page

  Scenario: Admin can log out
    When I fill in "password" with "secureAdminPassword"
    And press "Submit"
    When I press link "Logout"
    Then I should be on the admin landing page




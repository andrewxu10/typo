Feature: Create Category

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create category
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_description" with "TEST"
    And I press "Save"
    Then I should be on the new category page
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"

  Scenario: Successfully edit category
    Given I am on the new category page
    And there is a category set up
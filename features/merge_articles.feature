Feature: Merge Articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
    And blog id1 and id2 are set up
    
    # And there exists an article titled "id1" which contains "hello world" and author is "admin" with the comment "wow good article"
    # And there exists an article titled "id2" which contains "lorum ipsum" and author is "big" with the comment "bad opinions here"
    
    # google cucumber scenario outline- if you want to set up multiple things in one line, use a table

  Scenario: Successfully merge articles
    Given I am on the id1 edit article page
    And I fill in "merge_with" with "2"
    And I press "Merge"
    Then I am on the id1 article page
    Then I should see "lorum ipsum"
    Then I should see "hello world"
    Then I should see "wow good article"
    Then I should see "bad opinions here"
    Then I should see "id1"
    
  Scenario: Try to merge article with itself (sad)
    Given I am on the id1 edit article page
    And I fill in "merge_with" with "1"
    And I press "Merge"
    Then I should be on the id1 edit article page
    Then I should see "error"
    
  Scenario: Try to merge article with nonexistent (sad)
    Given I am on the id1 edit article page
    And I fill in "merge_with" with "99999999999"
    And I press "Merge"
    Then I should be on the id1 edit article page
    Then I should see "error"
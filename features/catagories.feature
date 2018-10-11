Feature: Manage Catagories
  As an author
  In order to catagorize the blog posts
  I want to create a catagory
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"
  
    Scenario: I should be on the Categories page
      Then I should see "Categories"
      And I should see "General"
    
    Scenario: Create new category
      When I fill in "Name" with "Test Category"
      And I press "Save"
      And I should see "Test Category"
      
     Scenario: Edit category 
      When I follow "General"
      When I fill in "Name" with "General- Change"
      And I press "Save"
      And I should see "General- Change"
  
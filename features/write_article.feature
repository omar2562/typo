Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully write articles
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
    
  Scenario: Successfully create categories
  	Given I am on the category page
  	When I fill in "Name" with "Arequipa"
  	And I fill in "Keywords" with "ciudad,peru,ciudad, blanca, patrimonio"
  	And I fill in "Description" with "Ciudad ubicada al Sur del Peru, conocida como la Ciudad Blanca, patrimonio cultural de la Humanidad"
  	And I press "Save"  	
  	Then I should be on the category page
    And I should see "Arequipa"
    Then show me the page    

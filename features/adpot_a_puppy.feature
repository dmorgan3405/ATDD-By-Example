Feature: Adopting a puppy

  As a puppy lover
  I want to adopt puppies
  So that ...

  Scenario: Adopting a puppy
    Given I am on the puppy adoption site
    When I view the details of the first puppy
    And I choose to adopt the puppy
    And I enter my name "Your Name Here"
    And I enter my address "1151 N Marginal Rd"
    And I enter my email "you@example.com"
    And I choose to pay by "Credit card"
    And I choose to place my order
    Then I should see "Thank you for adopting a puppy!"

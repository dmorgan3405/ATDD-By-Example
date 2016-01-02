Feature: Adopting a puppy

  As a puppy lover
  I want to adopt puppies
  So that ...

  Background:
    Given I am on the puppy adoption site

  Scenario: Adopting a puppy
    When I view the details of the first puppy
    And I choose to adopt the puppy
    And I enter my name "Your Name Here"
    And I enter my address "1151 N Marginal Rd"
    And I enter my email "you@example.com"
    And I choose to pay by "Credit card"
    And I choose to place my order
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy using a table
    When I view the details of the first puppy
    And I choose to adopt the puppy
    And I checkout using:
      | name           | address            | email           | payment_method |
      | Your Name Here | 1151 N Marginal Rd | you@example.com | Credit card    |
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy using default data
    When I view the details of the first puppy
    And I choose to adopt the puppy
    And I checkout
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy with a different payment method
    When I view the details of the first puppy
    And I choose to adopt the puppy
    And I checkout using a payment method of "Purchase order"
    Then I should see "Thank you for adopting a puppy!"

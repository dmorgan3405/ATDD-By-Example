Feature: Shopping Cart Validation
  As a prospective puppy owner
  I want to see accessories that I may need for my puppy
  So that I am well equipped to care for it

  Background:
    Given I am on the puppy adoption site

  Scenario Outline: Shopping cart offers common accessories
    When I adopt puppy 1
    Then I should see "<accessory>" as an optional accessory
  Examples:
    | accessory       |
    | Collar & Leash  |
    | Chew Toy        |
    | Travel Carrier  |
    | First Vet Visit |

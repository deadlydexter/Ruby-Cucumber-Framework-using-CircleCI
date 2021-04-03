Feature: Using the Puppy Adoption Feature

  @AdoptingOnePuppy @circleCI
  Scenario: Adopting one puppy

  As a puppy lover
  I want to adopt one puppy
  So puppy can chew my furniture

    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Samy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "samy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"


  @AdoptingTwoPuppy @circleCI
  Scenario: Adopting two puppies

  As a puppy lover
  I want to adopt two puppies
  So they can chew all my furniture

    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    When I click the View Details button for "Hanna"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Samy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "samy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  @ValidateCartItems @circleCI
  Scenario: Validate cart with one puppy

  Once Items are added to cart
  I want to validate elements on the cart

    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    Then I should see "Brook" as the name for line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I should see "$34.95" as the cart total


  @AdoptingPuppyWithDiffPayments @circleCI
  Scenario Outline: Adopting two puppies using different payment options

  As a User
  I want to adopt puppies
  and complete checkout using different payment options

    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    When I click the View Details button for "Hanna"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "<name>" in the name field
    And I enter "<address>" in the address field
    And I enter "<email>" in the email field
    And I select "<pay_type>" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"
    Examples:
      | name   | address      | email             | pay_type       |
      | Samy   | 123 Main St  | samy@example.com  | Credit card    |
      | Dexter | 555 South St | dex@mail.com      | Check          |
      | John   | 234 Leandog  | john@somemail.com | Purchase order |


  @AdoptingPuppyWithTable @circleCI
  Scenario: Adopting a puppy using a table
    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I complete the adoption with:
      | name | address         | email            | pay_type |
      | Samy | 123 Main Street | samy@example.com | Check    |
    Then I should see "Thank you for adopting a puppy!"


  @AdoptingPuppyWithTableDefaultData @circleCI
  Scenario: Adopting a puppy using a table and Defaultdata
    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I complete the adoption with default data:
      | name | address         | email            | pay_type |
      | Samy | 123 Main Street | samy@example.com | Check    |
    Then I should see "Thank you for adopting a puppy!"

  @AdoptingPuppyWithPartialDefaultData @circleCI
  Scenario: Adopting a puppy using partial default data
    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I complete the adoption using a Credit card
    Then I should see "Thank you for adopting a puppy!"

  @AdoptingPuppyWithOnlyDefaultData @circleCI
  Scenario: Adopting a puppy using all default data
    Given I am on the puppy adoption site
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I complete the adoption
    Then I should see "Thank you for adopting a puppy!"

  @ValidateTheWhatNotHow @circleCI
  Scenario: Thank you message should be displayed
    Given I am on the puppy adoption site
    When I complete the adoption of a puppy
    Then I should see "Thank you for adopting a puppy!"

  @circleCI @ErrorValidation
  Scenario: Name is a required field
    Given I am on the puppy adoption site
    When I checkout leaving the name field blank
    Then I should see the error message "Name can't be blank"

  @PageObjectNavigateAllMethod @circleCI
  Scenario: Navigate using Navigate All Method
    Given I am on the puppy adoption site
    When I complete the adoption of a puppy with navigate_all
    Then I should see "Thank you for adopting a puppy!"
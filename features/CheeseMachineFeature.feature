Feature: Using the Cheese Machine

  @CheeseMachine
  Scenario: Using the cheese machine
    When I click the first View Details button
    And I click the Adopt button
    Then Then I should see Brook as the name for line item 1

  @AdoptingAPuppy
  Scenario: scenario: Adopting one puppy
    Given I am on the puppy adoption site
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Cheezy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  @AdoptingAPuppy
  Scenario: Adopting two puppies
  Given I am on the puppy adoption site
  When I click the first View Details button
  And I click the Adopt Me button
  And I click the Adopt Another Puppy button
  And I click the second View Details button
  And I click the Adopt Me button
  And I click the Complete the Adoption button
  And I enter "Cheezy" in the name field
  And I enter "123 Main Street" in the address field
  And I enter "cheezy@example.com" in the email field
  And I select "Credit card" from the pay with dropdown
  And I click the Place Order button
  Then I should see "Thank you for adopting a puppy!"

  @AdoptingAPuppy
  Scenario: Validate cart with one puppy
  Given I am on the puppy adoption site
  When I click the first View Details button
  And I click the Adopt Me button
  Then I should see "Brook" as the name for line item 1
  And I should see "$34.95" as the subtotal for line item 1
  And I should see "$34.95" as the cart total
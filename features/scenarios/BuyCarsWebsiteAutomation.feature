Feature: Customer is able to login in to user account

  @AddItemToCart
  Scenario: Add Item to cart
    Given I am on the Homepage
    When I click the Add to cart button for Bentley
    And I navigate to Shopping Cart
    And I increase the number of Bentley by one
    And I reduce the number of Bentley by one
    When I click on checkout button
    And I click on "action" button for "Jaguar" on "ShoppingCart" Page
    And I click on "action" button on "ShoppingCart" Page

  @CreateAccount
  Scenario: customer is able to create an account
    Given I am on the Homepage
    When I click on "User Management"
    And I should see dropdown for signup and signin buttons
    Then I click on "Sign Up" button
    And I fill data on singup page
    And I fill user data
      | Email         | Password |
      | test@test.com | test1    |
    And I click on "Sign up" button
    Then I should be redirected to "UserProfile" page

  @SignInHappyPath
  Scenario: customer is able to sign in to account
    Given I am on the Homepage
    When I click on "User Management"
    And I should see dropdown for signup and signin buttons
    Then I click on "Sign in" button
    And I fill user data
      | Email         | Password |
      | test@test.com | test     |
    And I click on "Sign in"
    Then I should be redirected to "UserProfile" page

  @NoUserFound
  Scenario: non-exsiting customer should not be able to sign in to account
    Given I am on the Homepage
    When I click on "User Management"
    And I should see dropdown for signup and signin buttons
    Then I click on "Sign in" button
    And I fill user data
      | Email         | Password |
      | samys@xyz.com | test1    |
    And I click on "Sign in" button
    Then I should see "No user found" message

  @InvalidEmailAddress
  Scenario: Exsiting customer should not be able enter invalid email address to sign in to account
    Given I am on the Homepage
    When I click on "User Management"
    And I should see dropdown for signup and signin buttons
    Then I click on "Sign in" button
    And I fill user data
      | Email    | Password |
      | satheesh | test1    |
    And I click on "Sign in" button
    Then I should see "Invalid Email" message

  @AddMultipleItemsToCart
  Scenario: customer able to add more than 1 item
    Given I am on the Homepage
    When I click on "Buy Car Online"
    And I should see all 6 cars listed
    Then I click on "Add to cart" button
      | car     |
      | Bentley |
      | Acura   |
      | Jaguar  |
    And I click on "checkout" button
    When I Sign in with existing account
    And I navigate to Shopping Cart
    Then I should see existing orders
    And I click on "checkout button
    Then I should be redirected to "checkout" page
    And I fill data
      | Name | Address           | Card Holder Name | Credit card number | Expiration Month | Expiration Year | CVC |
      | samy | 123 starling city | samy cast        | 411111111111       | 12               | 22              | 123 |
    And I click on "Buy now" button
    Then I should see "Successfully bought product" message

  @SmokeTest @End2EndTest
  Scenario: non-Exsiting customer should be able add items to the cart and sign in
    Given I am on the Homepage
    When I click on "Buy Car Online"
    And I should see all 6 cars listed
    Then I click on "Add to cart" button
      | car     |
      | Bentley |
    And I click on "checkout" button
    Then I should be redirected to sign in page
    And I fill user data
      | Email         | Password |
      | test@test.com | test1    |
    Then I should see "No user found" message
    And I click on "Sign Up" button
    Then I should see number of cart item to show "1"
    And I fill data on singup page
    And I fill user data
      | Email             | Password |
      | test_one@test.com | test1    |
    And I click on "Sign up" button
    Then I should be redirected to "UserProfile" page
    And I click on "shopping cart" button
    Then I should see my car selected
      | car     | order |
      | Bentley | 1     |
    And I click on "Action"button
    Then I should see a drop down to increase, decrease and delete items in cart
    And I click on "increase by 1" button
    Then I should see the orders value as "2"
    And I click on "action" button
    And I click on "decrease by 1" button
    Then I should see the orders value as "1"
    And I click on "action" button
    And I click on "Remove all" button
    Then I should see my shopping cart empty
    When I click on "Buy Car Online"
    And I click on "Add to cart" button
      | car    |
      | Jaguar |
    And I click on "shopping cart" button
    And I click on "checkout" button
    Then I should be on "checkout" page
    And I fill data
      | Name | Address           | Card Holder Name | Credit card number | Expiration Month | Expiration Year | CVC |
      | samy | 123 starling city | samy cast        | 411111111111       | 12               | 22              | 123 |
    And I click on "Buy now" button
    Then I should see "Successfully bought product" message
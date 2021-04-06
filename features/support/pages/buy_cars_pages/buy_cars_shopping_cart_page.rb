class BuyCarsShoppingCartPage

  include PageObject

  #Action Buttons
  button(:click_on_bentley_action, :id => 'Bentley_action_btn')
  button(:click_on_jaguar_action, :id => 'Jaguar_action_btn')
  button(:click_on_acura_action, :id => 'Acura_action_btn')
  button(:click_on_cadillac_action, :id => 'Cadillac_action_btn')
  button(:click_on_genesis_action, :id => 'Genesis_action_btn')
  button(:click_on_chrysler_action, :id => 'Chrysler_action_btn')


  #Reduce By One
  link(:reduce_bentley_by_1, :id => 'reduce_Bentley_by_one')
  link(:reduce_jaguar_by_1, :id => 'reduce_Jaguar_by_one')
  link(:reduce_acura_by_1, :id => 'reduce_Acura_by_one')
  link(:reduce_cadillac_by_1, :id => 'reduce_Cadillac_by_one')
  link(:reduce_genesis_by_1, :id => 'reduce_Genesis_by_one')
  link(:reduce_chrysler_by_1, :id => 'reduce_Chrysler_by_one')

  #Increase By One
  link(:increase_jaguar_by_1, :id => 'increase_Jaguar_by_one')
  link(:increase_bentley_by_1, :id => 'increase_Bentley_by_one')
  link(:increase_acura_by_1, :id => 'increase_Acura_by_one')
  link(:increase_cadillac_by_1, :id => 'increase_Cadillac_by_one')
  link(:increase_genesis_by_1, :id => 'increase_Genesis_by_one')
  link(:increase_chrysler_by_1, :id => 'increase_Chrysler_by_one')

  #Remove All
  link(:remove_all_jaguar, :id => 'remove_all_Jaguar_link')
  link(:remove_all_bentley, :id => 'remove_all_Bentley_link')
  link(:remove_all_acura, :id => 'remove_all_Acura_link')
  link(:remove_all_cadillac, :id => 'remove_all_Cadillac_link')
  link(:remove_all_genesis, :id => 'remove_all_Genesis_link')
  link(:remove_all_chrysler, :id => 'remove_all_Chrysler_link')

  #Checkout Button
  link(:checkout_button, :id => 'checkout_btn')

end

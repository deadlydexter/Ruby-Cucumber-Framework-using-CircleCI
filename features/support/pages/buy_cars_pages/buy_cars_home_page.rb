class BuyCarsHomePage
  include PageObject

  # page_url "http://localhost:3000/"
  page_url "https://myshopping-cart-app.herokuapp.com/"

  #HomePage Items - Cars
  link(:add_bentley_to_cart, :id => 'Bentley')
  link(:add_jaguar_to_cart, :id => 'Jaguar')
  link(:add_acura_to_cart, :id => 'Acura')
  link(:add_cadillac_to_cart, :id => 'Cadillac')
  link(:add_genesis_to_cart, :id => 'Genesis')
  link(:add_chrysler_to_cart, :id => 'Chrysler')

  #Navigation:
  link(:go_to_cart, :id => 'shopping_cart_link')
  link(:go_to_user_management_tab, :id => 'user_management_link')
  link(:go_to_sign_up_page, :id => 'sign_up_link')
  link(:go_to_sign_in_page, :id => 'sign_in_link')


end
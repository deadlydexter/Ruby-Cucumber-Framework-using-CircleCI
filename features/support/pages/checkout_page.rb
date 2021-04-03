class CheckoutPage

  include PageObject

  text_field(:name, :id => "order_name")
  textarea(:address, :id => "order_address")
  text_field(:email, :id => "order_email")
  select_list(:pay_type, :id => "order_pay_type")



  def name=(name)
    @browser.text_field(:id => "order_name").set(name)
    @browser.text_field(:id => 'order_name').send_keys :tab
  end

  def address=(address)
    @browser.textarea(:name => "order[address]").set(address)
  end

  def email=(email)
    @browser.text_field(:id => "order_email").set(email)
  end

  def pay_type=(pay_type)
    @browser.select_list(:id => "order_pay_type").select(pay_type)
  end

  def place_order
    @browser.button(:value => "Place Order").click
  end
end
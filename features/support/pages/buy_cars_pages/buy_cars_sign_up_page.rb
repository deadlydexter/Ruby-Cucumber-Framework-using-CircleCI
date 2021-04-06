class BuyCarsSignUpPage

  include PageObject

  text_field(:sign_up_email, :id => "email")
  text_field(:sign_up_password, :id => "password")
  button(:signup_button, :id => "signup_btn")

  def set_signup_email=(email)
    self.sign_up_email = email
  end

  def set_signup_password=(password)
    self.sign_up_password = password
  end

end
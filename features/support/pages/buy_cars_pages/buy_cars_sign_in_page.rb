class BuyCarsSignInPage

  include PageObject

  text_field(:sign_in_email, :id => "email")
  text_field(:sign_in_password, :id => "password")
  button(:signin_button, :id => "signin_btn")

  def set_signin_email=(email)
    self.sign_in_email = email
  end

  def set_signin_password=(password)
    self.sign_in_password = password
  end

end
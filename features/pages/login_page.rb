class LoginPage < SitePrism::Page

  element :username_field, 'input[name="username"]'
  element :password_field, 'input[name="password"]'
  element :login_btn, '#btnLogin'
  element :error_message, '.alert-danger'

  
  def login_with(username, password)
    username_field.set username
    password_field.set password
    login_btn.click
  end
end

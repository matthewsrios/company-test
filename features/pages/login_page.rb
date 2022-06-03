# frozen_string_literal: true

class LoginPage < SitePrism::Page
  element :username_field, 'input[name="username"]'
  element :password_field, 'input[name="password"]'
  element :login_btn, '#btnLogin'
  element :error_message_span, 'div[role="alert"]'

  attr_reader :login_error_message

  def initialize
    super()
    @login_error_message = 'Wrong username or password'
  end

  def login_with(username, password)
    username_field.set username
    password_field.set password
    login_btn.click
  end
end

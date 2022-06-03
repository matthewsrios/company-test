# frozen_string_literal: true

class HeaderPage < SitePrism::Page
  element :logout_btn, '//a[text()[contains(.,"Logout")]]'
end

# frozen_string_literal: true

class InvoiceListPage < SitePrism::Page
  element :invoice_list_header, :xpath, '//h2[text()[contains(.,"Invoice List")]]'
  element :first_invoice_details_link, :xpath, '(//a[text()[contains(.,"Invoice Details")]])[1]'
end

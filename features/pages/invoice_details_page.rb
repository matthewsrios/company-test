# frozen_string_literal: true

class InvoiceDetailsPage < SitePrism::Page
  element :invoice_date, :xpath, '//section[1]/div[1]/ul[1]/li[1]'
  element :hotel_name, 'h4.mt-5'
  element :due_date, :xpath, '//section[1]/div[1]/ul[1]/li[2]'
  element :invoice_number, 'h6.mt-2'
  element :booking_code, :xpath, '//table/tbody/tr/td[text()[contains(.,"Booking Code")]]/following-sibling::td[1]'
  element :room, :xpath, '//table/tbody/tr/td[text()[contains(.,"Room")]]/following-sibling::td[1]'
  element :total_stay_count, :xpath,
          '//table/tbody/tr/td[text()[contains(.,"Total Stay Count")]]/following-sibling::td[1]'
  element :total_stay_amount, :xpath,
          '//table/tbody/tr/td[text()[contains(.,"Total Stay Amount")]]/following-sibling::td[1]'
  element :check_in, :xpath, '//table/tbody/tr/td[text()[contains(.,"Check-In")]]/following-sibling::td[1]'
  element :check_out, :xpath, '//table/tbody/tr/td[text()[contains(.,"Check-Out")]]/following-sibling::td[1]'
  element :customer_details, :xpath, '//h5[text()[contains(.,"Customer Details")]]/following-sibling::div[1]'
  element :deposit_now, :xpath,
          '//h5[text()[contains(.,"Billing Details")]]/following-sibling::table[1]/tbody/tr/td[count(h5[text()[contains(.,"Billing Details")]]/following-sibling::table[1]/thead//tr//td[text()[contains(.,"Deposit Nowt")]/preceding-sibling::td])+1]'
  element :tax, :xpath,
          '//h5[text()[contains(.,"Billing Details")]]/following-sibling::table[1]/tbody/tr/td[count(h5[text()[contains(.,"Billing Details")]]/following-sibling::table[1]/thead//tr//td[text()[contains(.,"Tax&VAT")]/preceding-sibling::td])+2]'
  element :total_amount, :xpath,
          '//h5[text()[contains(.,"Billing Details")]]/following-sibling::table[1]/tbody/tr/td[count(h5[text()[contains(.,"Billing Details")]]/following-sibling::table[1]/thead//tr//td[text()[contains(.,"Total Amount")]/preceding-sibling::td])+3]'
end

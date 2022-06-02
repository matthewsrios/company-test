When('I click on invoice details link') do
    invoice_list_page = InvoiceListPage.new
    invoice_list_page.first_invoice_details_link.click
end

Then('I see invoice details for {string}') do |username|
    username_symbol = username.to_sym
    user_invoice = INVOICE[username_symbol][:invoice]
    new_window = windows.last
    within_window new_window do
        invoice_details_page = InvoiceDetailsPage.new
        user_invoice.map do |invoice_item, value|
            expect(invoice_details_page.send(invoice_item).text.delete(" \t\r\n")).to eq(value.to_s.delete(" \t\r\n"))
        end
    end
end

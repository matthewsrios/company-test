  
  Given('I access login page') do
    visit URL    
  end
  
  When('I login with {string} and {string}') do |username, password|
    login_page = LoginPage.new
    header_page = HeaderPage.new
    login_page.login_with username, password
  end
  
  Then('I see {string} after login') do |element|
    if(element === 'invoice_page')
      invoice_page = InvoiceListPage.new
      expect(invoice_page.has_invoice_list_header?).to be_truthy
    else
      login_page = LoginPage.new
      expect(login_page.has_error_message?).to be_truthy
    end
  end

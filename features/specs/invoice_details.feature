Feature: Invoice
    Scenario: Invoice details
        Given I access login page
        And I login with <username> and <password>
        And I see 'invoice_page' after login
        When I click on invoice details link
        Then I see invoice details for <username>

        Examples:
            | username | password |
            | "demouser" | "abc123" |

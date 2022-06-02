Feature: Login
    Scenario Outline: Login
        Given I access login page
        When I login with <username> and <password>
        Then I see <element> after login

        Examples:
            | username    | password   | element               |
            | "demouser"  | "abc123"   | "invoice_page"        |
            | "Demouser"  | "abc123"   | "login_error_message" |
            | "demouser_" | "xyz"      | "login_error_message" |
            | "demouser"  | "nananana" | "login_error_message" |

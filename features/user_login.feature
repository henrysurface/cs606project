Feature: user login
 
  As an user
  So that I make appointments
  I want to login to the website

Background: users in database
  Given the following users exist:
  | username  |   UIN    |   phone    |    email     | password | password_confirmation | 
  | Joe       |123456789 | 9998887776 | joe@tamu.edu | 1234567  | 1234567               |            
  | Brickhoff |111222333 | 0009998887 | bh@tamu.edu  | 123456   | 123456                | 

Scenario: user login
  When I am on the home page
  And I follow "User Log In"
  Then I should be on the login page
  And I fill in "Email" with "bh@tamu.edu"
  And I fill in "Password" with "123456"
  And I press "Log in"
  Then I should see "Welcome, Brickhoff"
  
Scenario: user cannot login successfully(sad path)
  When I am on the home page
  And I follow "User Log In"
  Then I should be on the login page
  And I fill in "Email" with "joe@tamu.edu"
  And I fill in "Password" with "123456"
  And I press "Log in"
  Then I should be on the login page
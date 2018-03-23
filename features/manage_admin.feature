Feature: admin signup
 
  As an admin
  So that I can manage admin information
  I want to signup to the websit


Scenario: admin signup
  When I am on the home page
  And I follow "Admin SignUp"
  Then I should be on the adminsignup page
  And I fill in "Name" with "Andy"
  And I fill in "Email" with "andy@tamu.edu"
  And I fill in "Password" with "123456789"
  And I fill in "Password Confirmation" with "123456789"
  And I press "Create my admin account"
  Then I should see "Listing all suits"

Scenario: admin can't  signup successfully (sad path)
  When I am on the home page
  And I follow "Admin SignUp"
  Then I should be on the adminsignup page
  And I fill in "Name" with "Andy"
  And I fill in "Email" with "andy@tamu.edu"
  And I fill in "Password" with "1234"
  And I fill in "Password Confirmation" with "1234"
  And I press "Create my admin account"
  Then I should see "Sign up for Admin Interface"


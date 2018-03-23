Feature: manage an user
 
  As an admin
  So that I can manage user information
  I want to create/edit/delete an user

#Background: users in database
  



Scenario: manage an user
  When I am on the home page
  And I follow "SignUp for Career Closet!"
  Then I should be on the signup page
  And I fill in "Username" with "Xuezhang"
  And I fill in "Uin" with "123456789"
  And I fill in "Phone" with "1234567891"
  And I fill in "Email" with "brickhoff@tamu.edu"
  And I fill in "Password" with "123456789"
  And I fill in "Password confirmation" with "123456789"
  And I press "Sign up"
  Then I should see "Welcome, Xuezhang"
  And I follow "Back to see all users"
  Then I should see "All Users"
  And I follow "Edit"
  #Then I should be on the edit page
  And I fill in "Uin" with "123456788"
  And I fill in "Password" with "123456789"
  And I fill in "Password confirmation" with "123456789"
  And I press "Update account"
  Then I should see "Welcome, Xuezhang"
  And I follow "Back to see all users"
  Then I should see "All Users"
  And I follow "Delete"
  Then I should see "All Users"

Scenario: user cannot be created successfully(sad path)
  When I am on the home page
  And I follow "SignUp for Career Closet!"
  Then I should be on the signup page
  And I fill in "Username" with "Xiao"
  And I fill in "Uin" with "12345678"
  And I fill in "Phone" with "1234567891"
  And I fill in "Email" with "xiao@tamu.edu"
  And I fill in "Password" with "123456789"
  And I fill in "Password confirmation" with "123456789"
  And I press "Sign up"
  Then I should see "Signup for Career Closet"
  
Scenario:user cannot be edited successfully(sad path)
  When I am on the home page
  And I follow "SignUp for Career Closet!"
  Then I should be on the signup page
  And I fill in "Username" with "Peter"
  And I fill in "Uin" with "666777888"
  And I fill in "Phone" with "8889777666"
  And I fill in "Email" with "pt@tame.edu"
  And I fill in "Password" with "123456789"
  And I fill in "Password confirmation" with "123456789"
  And I press "Sign up"
  Then I should see "Welcome, Peter"
  And I follow "Back to see all users"
  Then I should see "All Users"
  And I follow "Edit"
  And I fill in "Uin" with "12345678"
  And I fill in "Password" with "123456789"
  And I fill in "Password confirmation" with "123456789"
  And I press "Update account"
  Then I should see "Edit your account"
  
 






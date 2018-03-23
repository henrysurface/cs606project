Feature: delete user
 
  As a career closet admin
  So that I can manage the users list
  I want to delete a user from the list
 
Background: users in database
 
  Given the following users exist:
  | username |   UIN    |   phone    |    email      | 
  | Joe       |123456789 | 9998887776 | joe@tamu.edu |              
  | Brickhoff |111222333 | 0009998887 | bh@tamu.edu  |   

Scenario: delete an user
  When I am on the users page




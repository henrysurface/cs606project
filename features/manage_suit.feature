Feature: manage a suit
 
  As an admin
  So that I can manage suit information
  I want to create/edit/delete a suit

Background: users in database
  Given the following users exist:
  | username |   UIN    |   phone    |    email      | 
  | Joe       |123456789 | 9998887776 | joe@tamu.edu |              
  | Brickhoff |111222333 | 0009998887 | bh@tamu.edu  | 

Scenario: manage a suit
  When I am on the home page
  And I follow "Suits in Closet"
  Then I should see "Listing all suits"
  And I follow "Add new suits"
  And I fill in "Appid" with "ABC 78"
  And I fill in "Gender" with "M"
  And I fill in "Size" with "6"
  And I fill in "Description" with "A fashion suit."
  And I fill in "User" with "1"
  And I press "Create Suit"
  Then I should see "Showing selected Suit"
  And I follow "Edit this suit"
  And I fill in "Size" with "10"
  And I press "Update Suit"
  Then I should see "Showing selected Suit"
  And I follow "Delete this suit"
  Then I should see "Listing all suits"
  

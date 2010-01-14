Feature: Initial login
  In order to use the system
  As a user first accessing the system
  I want to be able to create the first user (admin) account

Scenario: User first accesses the system creates an admin account
  Given no "users" exist
  When I go to the home page
  Then show me the page
  # Then I should see 
  # Then a user should exist with title: "My Post", body: "My body" 



  

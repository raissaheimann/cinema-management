Feature: Availability of sessions
  As a customer
  I want to be able to see which session are available
  So that I can choose one to buy tickets

Scenario: Movie unavailable due to lack of seats
  Given I'm in the Movies page 
  And There's a list of all sessions
  And I want to see if there's any 'Spider Man' session available
  When I see that all 'Spider Man' sessions are full
  Then I know that there are no available sessions

Scenario: Session unavailable due to an unforeseen event
  Given I'm in the Movies page 
  And There's a list of all sessions
  And I want to see if 'Spider Man' first session of the day is available
  When I see that 'Spider Man' is unavailable
  And There's a message that the reason is 'Unforeseen event happened'
  Then I know that 'Spider Man' first session of the day is unavailable

Scenario: Session unavailable while user navigated to sessions
  Given I'm in the Movies page 
  And There's a list of all sessions
  And I want to see if 'Spider Man' first session of the day is available
  When I see that 'Spider Man' is unavailable
  And There's a message that the reason is 'Unforeseen event happened'
  Then I know that 'Spider Man' first session of the day is unavailable

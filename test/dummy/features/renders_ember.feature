@javascript
Feature: Renders Ember App
  Scenario: It works
    When I visit "/app/foo"
    Then I should see "Welcome to Ember"

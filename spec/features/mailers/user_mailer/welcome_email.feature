@user_mailer
Feature: Sending welcome email

  Scenario: Sending Welcome Email
    When I am registering as a user
    Then I get a welcome email


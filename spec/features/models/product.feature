@product
Feature: Product needs to have a name

  Scenario: Product without name is invalid
    Given A Product
    When Product does not have name
    Then Product is invalid and name has relevant errors


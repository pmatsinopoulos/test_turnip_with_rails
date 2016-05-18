@getting_list_of_products
Feature: Getting the list of products

  Scenario: I am visiting the products page and I get the list of products
    Given The following list of products:
      | name      |
      | product 1 |
      | product 2 |
    When I visit the products page
    Then I see the products in reverse displayed order

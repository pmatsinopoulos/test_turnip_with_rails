@request @product_requests
Feature: Products REST resource

  Scenario: GET /products
    When The request to get product list
    Then Returns a page with product list

#require 'rails_helper'
#
#RSpec.describe "Products", type: :request do
#  describe "GET /products" do
#    it "works! (now write some real specs)" do
#      get products_path
#      expect(response).to have_http_status(200)
#    end
#  end
#end
#

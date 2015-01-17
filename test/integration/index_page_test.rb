require "test_helper"

class IndexPageTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "the index page" do
    visit root_path
    within "#title" do 
      assert page.has_content?("Mile High Parks")
    end
  end

  test "page has a map" do
    visit root_path
    assert page.has_css?("#map")

  end
end

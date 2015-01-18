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
    assert page.has_css?("#map-canvas")
  end

  test "the page has a marker title" do
    park1 = Park.create(formal_name: "Benedict Fountain Park", latitude: 10, longitude: 30)
    visit root_path
    assert page.has_content?(park1.formal_name)
  end
end

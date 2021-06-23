require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    
    # take a screenshot 
    # save_and_open_screenshot
    assert_selector "h1", text: "Sportify"
  end

  test "lets a signed in user create a new product" do
    login_as users(:camille)
    visit "/events/new"
    # save_and_open_screenshot

    fill_in "event_name", with: "Tennis"
    fill_in "event_description", with: "Change your life: Learn to code"
    # save_and_open_screenshot

    click_on 'Publish event!'
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal events_path, page.current_path
    assert_text "Change your life: Learn to code"
  end
end

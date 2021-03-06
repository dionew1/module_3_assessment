require "rails_helper"

feature "user can search for best_buy_location" do
  it "by providing a zip code" do
    # As a user
    # When I visit "/"
    visit "/"
    # And I fill in a search box with "80202" and click "search"
    fill_in "search", with: 80202
    click_on "Search"
    # Then my current path should be "/search" (ignoring params)
    expect(current_path).to eq ("/search")
    # And I should see stores within 25 miles of 80202
    # And I should see a message that says "17 Total Stores"
    expect(page).to have_content "17 Total Stores"
    # And I should see exactly 10 results (There are 17 stores within 25 miles. We want to display 10 on this page and 7 on the next. Get the first page to work first from start to finish and worry about pagination later.)
    # And I should see the long name, city, distance, phone number and store type for each of the 10 results
    expect(page).to have_selector ".name"
    expect(page).to have_selector ".city"
    expect(page).to have_selector ".distance"
    expect(page).to have_selector ".phone-number"
    expect(page).to have_selector ".store-type"
  end
end

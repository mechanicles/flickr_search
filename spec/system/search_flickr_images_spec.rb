require "rails_helper"

RSpec.describe "Searching flikcr images", type: :system do

  it "search flickr images for given text" do
    visit search_flickr_path
    fill_in "Search", with: "Coffee"
    click_on("Search")
    expect(page).to have_content("Coffee")
  end

end

require "rails_helper"

RSpec.describe "Searching flikcr images", type: :system do

  it "redirects to root page if passed text is empty" do
    visit root_path
    fill_in "text", with: ""
    click_on("Submit")
    expect(current_path).to eql(root_path)
  end

  it "searches flickr images for given text" do
    visit root_path
    fill_in "text", with: "Coffee"
    click_on("Submit")
    expect(page).to have_content("Coffee")
  end

end

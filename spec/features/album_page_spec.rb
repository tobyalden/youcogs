require "rails_helper"

describe "viewing an album" do
  it "shows an album's info when its title is clicked" do
    visit root_path
    fill_in "Search for:", :with => "secede"
    click_on 'Secede - Tryshasla'
    expect(page).to have_content 'Foliage Pathway'

  end
end

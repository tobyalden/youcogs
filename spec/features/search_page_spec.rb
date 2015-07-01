require 'rails_helper'

describe 'the search feature' do
  it 'queries discogs and displays the results' do
    visit root_path
    fill_in "Search for:", :with => "Aphex Twin"
    click_on 'Search'
    expect(page).to have_content 'Richard D. James Album'
  end
end

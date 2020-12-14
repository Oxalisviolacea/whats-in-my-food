require 'rails_helper'

RSpec.describe 'Foods Index Page', type: :feature do
  describe 'As a visitor, when I visit the foods index page' do
    it 'shows me details about foods that have the ingredient sweet potatoes' do
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'
      expect(current_path).to eq('/foods')
      expect(page).to have_content('Showing 10 results')
      expect(page).to have_content('GTIN/UPC Code: 070560951975')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('Brand Owner: The Pictsweet Company')
      expect(page).to have_content('Ingredients: SWEET POTATOES.')
    end
  end
end
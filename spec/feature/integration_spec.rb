# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'rick riordan'
        fill_in 'Price', with: 15
        fill_in 'Published', with: '2000-11-23'
        click_on 'Create Book'
        visit books_path
        click_on 'Show'
        expect(page).to have_content('harry potter')
        expect(page).to have_content('rick riordan')
        expect(page).to have_content(15)
        expect(page).to have_content('2000-11-23')
    end
end


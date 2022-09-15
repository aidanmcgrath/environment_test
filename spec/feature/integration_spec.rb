# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Author', with: 'rick riordan'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('rick riordan')
    end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Price', with: 15
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content(15)
    end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Published Date', with: '2000-11-23'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('2000-11-23')
    end
end
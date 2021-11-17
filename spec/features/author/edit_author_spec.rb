require 'rails_helper'

describe "Show author page", type: :feature do
    it "should display the authors credentials" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
        page.fill_in 'author[first_name]', with: 'Blan'
        find('input[type="submit"]').click
        expect(page).to have_text('Blan')
        expect(page).to have_text('Turing')
        expect(page).to have_text('http://wikipedia.de/Alan_Turing')
      end
end

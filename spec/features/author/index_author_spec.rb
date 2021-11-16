require 'rails_helper'

describe "Show author page", type: :feature do
    it "should display the authors credentials" do
        @alan = FactoryBot.create :author
        visit authors_url
        expect(page).to have_text('Alan Turing')
        expect(page).to have_text('http://wikipedia.de/Alan_Turing')
    end

    it "should have link to new author" do
        visit authors_url
        expect(page).to have_link 'New', href: new_author_path
    end
end

require 'rails_helper'

describe "Show author page", type: :feature do
    it "should display the authors credentials" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_text('Alan Turing')
        expect(page).to have_text('http://wikipedia.de/Alan_Turing')
    end

    it "should have link to new author" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end

    it "should have a link to delete an author" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Delete', href: author_path(@alan)
    end

    it "should delete a user when clicking the delete link" do
        @alan = FactoryBot.create :author
        visit authors_path
        click_link("Delete")
        expect(Author.count).to eq(0)
    end

end

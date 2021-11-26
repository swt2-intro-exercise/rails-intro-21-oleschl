require 'rails_helper'

describe "Show author page", type: :feature do
    it "should display the paper title" do
        @paper = FactoryBot.create :paper
        visit papers_path
        expect(page).to have_text('COMPUTING MACHINERY AND INTELLIGENCE')
    end

    it "should not display a paper if it was not published in the given year" do
        @paper = FactoryBot.create :paper
        visit papers_path(:year => 1951)
        expect(page).to_not have_text('COMPUTING MACHINERY AND INTELLIGENCE')
    end

    it "should display a paper if it was published in the given year" do
        @paper = FactoryBot.create :paper
        visit papers_path(:year => 1950)
        expect(page).to have_text('COMPUTING MACHINERY AND INTELLIGENCE')
    end

end

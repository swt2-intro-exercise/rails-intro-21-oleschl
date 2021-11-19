require 'rails_helper'

describe "Show author page", type: :feature do
    it "should save the selected authors" do
        @paper = FactoryBot.create :paper
        @paper.authors = []
        visit edit_paper_path(@paper)
        find('option', :text => "Alan Turing").select_option
        find('input[type="submit"]').click
        expect(page).to have_text('Alan')
      end
end

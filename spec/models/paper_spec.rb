require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have a n:m relation with authors" do
    paper = FactoryBot.create :paper
    
    expect(paper.authors).to_not be_empty
  end
end

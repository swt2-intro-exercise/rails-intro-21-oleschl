require 'rails_helper'

describe "Author", type :model do
    it "initializes the first name correctly" do
        author = Author.new("Alan", "Turing", "http://wikipedia.org/Alan_Turing")
        expect(author.first_name).to eq("Alan")
    end
    it "initializes the last name correctly" do
        author = Author.new("Alan", "Turing", "http://wikipedia.org/Alan_Turing")
        expect(author.last_name).to eq("Turing")
    end
    it "initializes the homepage correctly" do
        author = Author.new("Alan", "Turing", "http://wikipedia.org/Alan_Turing")
        expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    end
end
require 'app'

describe Home do
  describe "Loading up the website" do
    it "Displays text that reads 'Testing infrastructure working!'" do
      expect(page).to have_content 'Testing infrastructure working!'
    end
  end
end

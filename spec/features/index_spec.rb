require 'spec_helper'
  describe "Loading up the website" do
    visit '/'
    it "Displays text that reads 'Testing infrastructure working!'" do
      expect(page).to have_content 'Testing infrastructure working!'
    end
  end

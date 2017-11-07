require 'spec_helper'

feature "Testing the test infrastructure" do
  scenario "Displays text that reads 'Testing infrastructure working!'" do
    visit ('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

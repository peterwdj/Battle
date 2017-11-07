require 'spec_helper'

describe "Testing the test infrastructure" do
  it "Displays text that reads 'Testing infrastructure working!'" do
    visit ('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

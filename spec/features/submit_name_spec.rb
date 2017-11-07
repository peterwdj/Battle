require 'spec_helper'

feature 'Allowing two players to enter their names' do
  scenario "Displays players' names on screen after they have been entered" do
    visit '/'
    fill_in "player1", :with => "Majd"
    click_button "Submit"
    visit '/names'
    expect(page).to have_text("Player 1: Majd")
  end
end

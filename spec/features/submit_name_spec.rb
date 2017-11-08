require 'spec_helper'

feature 'Allowing two players to enter their names' do
  scenario "Displays player one's name on screen after they have been entered" do
    visit '/'
    fill_in 'player1', with: 'Majd'
    click_button 'Submit'
    expect(page).to have_text('Player 1: Majd')
  end

  scenario "Displays player two's name on screen after they have been entered" do
    visit '/'
    fill_in 'player2', with: 'Peter'
    click_button 'Submit'
    expect(page).to have_text('Player 2: Peter')
  end
end

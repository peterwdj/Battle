require 'spec_helper'

feature 'Allows Player 1 to check Player 2\'s hitpoints' do
  scenario 'Display player 2\'s hitpoints on screen' do
    visit '/'
    fill_in 'player1', with: 'Majd'
    fill_in 'player2', with: 'Peter'
    click_button 'Submit'
    expect(page).to have_content 'Player 2: 100HP'
  end
end

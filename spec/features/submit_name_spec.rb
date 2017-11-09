require 'spec_helper'

feature 'Allowing two players to enter their names' do
  scenario 'Displays player names on screen' do
    visit '/'
    fill_in 'player1', with: 'Majd'
    fill_in 'player2', with: 'Peter'
    click_button 'Submit'
    expect(page).to have_text('Majd vs. Peter')
  end
end

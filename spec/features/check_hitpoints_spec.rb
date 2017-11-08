require 'spec_helper'

feature 'Allows Player 1 to check Player 2\'s hitpoints' do
  scenario 'Display player 2\'s hitpoints on screen after clicking the \'View Hitpoints\' button' do
    visit '/play'
    click_button 'View hitpoints'
  end
end

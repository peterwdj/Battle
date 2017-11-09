require 'spec_helper'

feature 'Allowing two players to enter their names' do
  scenario 'Displays player names on screen' do
    sign_in_and_play
    expect(page).to have_text('Majd vs. Peter')
  end
end

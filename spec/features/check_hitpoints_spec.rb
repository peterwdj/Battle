feature 'Allows Player 1 to check Player 2\'s hitpoints' do
  scenario 'Display player 2\'s hitpoints on screen' do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 100HP'
  end
end

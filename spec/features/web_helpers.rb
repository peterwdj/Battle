def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Majd'
  fill_in 'player2', with: 'Peter'
  click_button 'Start game'
end

feature 'Reduce hitpoints' do
  scenario 'Reducing Player 2\'s HP after Player 1 attacks' do
    sign_in_and_play
    click_button('Attack')
    expect($game.player2.hitpoints).to eq 90
  end
end

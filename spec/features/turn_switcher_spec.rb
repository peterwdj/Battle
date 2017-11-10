feature 'Switching turns' do
  scenario 'Allowing a user to return to the play page after attacking' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_button('Back to battle!')
  end
  scenario 'Informing the user that it is player 1\'s turn to attack' do
    sign_in_and_play
    expect(page).to have_content('Majd\'s turn to attack!')
  end
  scenario 'Informing the user that it is player 2\'s turn to attack' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Back to battle!')
    expect(page).to have_content('Peter\'s turn to attack!')
  end
end

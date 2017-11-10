feature 'Switching turns' do
  scenario 'Allowing a user to return to the play page after attacking' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_button('Back to battle!')
  end
end

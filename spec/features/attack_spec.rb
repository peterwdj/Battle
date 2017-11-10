feature 'Allows Player 1 to attack Player 2' do
  scenario 'Rendering attack button' do
    sign_in_and_play
    expect(page). to have_button('Attack!')
  end
  scenario 'Clicking the attack button navigates to a new page confirming the attack' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_text("Congratulations! You have successfully attacked Peter!")
  end
end

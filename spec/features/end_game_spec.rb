feature 'Ends the game when a player\'s HP drops below 0' do
  scenario 'Navigates to a page informing the user that the page has ended' do
    sign_in_and_play
    18.times do
      click_button 'Attack!'
      click_button 'Back to battle!'
    end
    click_button 'Attack!'
    expect(page).to have_content 'Peter fainted! Congratulations Majd, you won the game!'
  end
end

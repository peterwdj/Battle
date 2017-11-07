require 'spec_helper'

feature 'Allowing two players to enter their names' do
  scenario "Displays players' names on screen after they have been entered" do
    visit '/'
    fill_in "Player1", :with => "Majd"
    click_button "Submit"
    expect(Battle.new.player1).to eq("Majd") 
  end
end

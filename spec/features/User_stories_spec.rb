require 'spec_helper'

feature 'Adding names' do
  scenario "Users adding names to the form" do
    sign_in_and_play
    expect(page).to have_content('Player1 TestName Player2 Testname2')
  end
end
feature 'Health bar' do
  scenario 'Player 2 has hit point bar' do
    sign_in_and_play
    expect(find('progress')['max']).to eq('100')
  end
end

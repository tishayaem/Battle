require 'spec_helper'
feature 'Adding names' do
  scenario "Users adding names to the form" do
    visit('http://localhost:4567')
    fill_in('Player1', with: 'TestName')
    fill_in('Player2', with: 'Testname2')
    click_button('Submit')
    expect(page).to have_content('Player1 TestName Player2 Testname2')
  end
end
feature 'Health bar' do
  scenario 'Player 2 has hit point bar' do
    visit('http://localhost:4567/play')
    expect(find('progress')['max']).to eq('100')
  end
end

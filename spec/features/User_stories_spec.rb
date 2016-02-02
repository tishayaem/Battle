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

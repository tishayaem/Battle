feature 'Swithing turns' do
  scenario 'After attack switch turn' do
    sign_in_and_play
    click_button('Attack')
    click_button('Switch turn')
    expect(page). to have_content 'Mittens to the battlefield'
  end

end

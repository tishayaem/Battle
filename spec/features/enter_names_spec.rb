feature "Players sign in" do
  scenario "displays player names" do
    sign_in_and_play
    expect(page).to have_text("Ash [100hp] Jessie [100hp]")
  end

  scenario 'displays player hit points' do
    sign_in_and_play
    expect(page).to have_text("Ash [100hp] Jessie [100hp]")
  end
end

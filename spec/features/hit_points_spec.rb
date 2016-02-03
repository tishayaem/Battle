
feature "hit points" do
  scenario "See player 2s hit points" do
    sign_in_and_play
    expect(page).to have_text("10")
  end
end

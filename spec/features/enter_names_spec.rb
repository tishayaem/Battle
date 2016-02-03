# In spec/features, add a new Capybara feature test that expects players to fill in their names (in a form),
# submit that form, and see those names on-screen

feature "enter names" do
  scenario "User enters their name" do
    sign_in_and_play
    expect(page).to have_text("Sarah")
  end
end

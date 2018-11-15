feature "can see player 2's hp" do
  scenario "checks that player 2's hp is visible to player 1" do
    sign_in_and_play
    expect(page).to have_content('John HP:60')
  end

  scenario "player 2's HP is reduced by 10 after being attacked" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content('John HP:50')
  end
 end

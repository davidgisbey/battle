feature "can see player 2's hp" do
  it "checks that player 2's hp is visible to player 1" do
    sign_in_and_play
    expect(page).to have_content('John HP:60')
    end
 end

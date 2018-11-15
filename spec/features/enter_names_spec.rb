feature 'test players names work' do
  it "Testing both players can fill out their names via form" do
    sign_in_and_play
    expect(page).to have_content 'David vs. John HP:60'
   end
 end

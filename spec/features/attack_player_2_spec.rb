require './app'

feature 'player 1 can attack' do
  it "player 1 can attack player 2 and receives confirmation" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'David hit John HP:60 for 10'
   end
 end

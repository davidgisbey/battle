require 'spec_helper'

feature 'player 1 can attack' do
  scenario "player 1 can attack player 2 and receives confirmation" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'David hit John for 10'
  end

  scenario "after attacking the turn switches" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'John click attack to hit David'
  end
 end

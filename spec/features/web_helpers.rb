def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'John HP:60')
  fill_in('player_2_name', with: 'David')
  click_button('Submit')
end

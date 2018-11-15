def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'David')
  fill_in('player_2_name', with: 'John HP:60')
  click_button('Submit')
end

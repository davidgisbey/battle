describe Game do
  let(:player1) { Player.new("David") }
  let(:player2) { Player.new("John") }
  let(:game) { Game.new(player1, player2) }


  it 'attack player reduced the opponents hp' do
    game.attack(player1)
    expect(player1.hp).to eq(50)
  end

  it 'when a new instance is created it requires two players' do
    expect(game.player_1).to eq(player1)
    expect(game.player_2).to eq(player2)
  end
end

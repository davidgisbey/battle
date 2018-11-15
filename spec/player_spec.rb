describe Player do
  let(:subject) { Player.new("David") }

  it "has a name" do
    expect(subject.name).to eq "David"
  end

  it "has HP" do
    expect(subject.hp).to eq 60
  end

  it "reduces hp when reduce health is called" do
    subject.reduce_health(10)
    expect(subject.hp).to eq(50)
  end
end

describe Player do
  let(:subject) { Player.new("David") }

  it "has a name" do
    expect(subject.name).to eq "David"
  end

  it "has HP" do
    expect(subject.hp).to eq 60
  end
end

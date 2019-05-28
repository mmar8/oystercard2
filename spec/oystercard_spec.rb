 require 'oystercard'

describe Oystercard do

  it 'checks that a balance is 0' do
    expect(subject.balance).to eq(0)
  end

  it 'can top-up balance on the card' do
    expect(subject).to respond_to(:top_up).with(1).argument
  end
end

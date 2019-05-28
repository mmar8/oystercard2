 require 'oystercard'

describe Oystercard do
  it 'checks that a balance is 0' do
    oystercard = Oystercard.new
    expect(oystercard.balance).to eq(0)
  end
end

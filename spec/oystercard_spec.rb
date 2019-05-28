 require 'oystercard'

describe Oystercard do

  it 'checks that a balance is 0' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    it 'can respond to top_up' do
      expect(subject).to respond_to(:top_up).with(1).argument
    end

    it 'can top_up balance by 1' do
      expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
    end

    it 'raises an error if balance over 90' do
      max_b = Oystercard::MAX_BALANCE
      subject.top_up(max_b)
      expect{ subject.top_up 1 }.to raise_error 'Max balance of #{MAX_BALANCE} exceeded'
    end
  end

  describe '#deduct' do
    it 'can respond to deduct' do
      expect(subject).to respond_to(:deduct).with(1).argument
    end

    it 'can deduct money from the card' do
      subject.top_up(10)
      expect{ subject.deduct 1 }.to change{ subject.balance }.by -1
    end
  end
end

class Oystercard

  MAX_BALANCE = 20

  attr_reader :balance

  def initialize
    @balance = 0
  end
  def top_up(amount)
    @balance += amount
     if @balance > MAX_BALANCE
      fail 'Max balance of #{MAX_BALANCE} exceeded'
    end
  end
  def deduct(amount)
     @balance = @balance - amount
  end
end

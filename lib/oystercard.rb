class Oystercard

  MAX_AMOUNT = 90
  attr_reader :balance, :in_use

  def initialize(balance=0)
    @balance = balance
    @in_use = false
  end

  def top_up value
    raise "Balance exceeds #{MAX_AMOUNT}" if value + balance > MAX_AMOUNT
    @balance+= value
  end

  def deduct value
    @balance -= value
  end

  def in_journey?
    @in_use
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false
  end


end

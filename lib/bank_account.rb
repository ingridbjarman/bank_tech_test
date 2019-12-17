class Bank_account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount) 
    raise "Please enter a valid amount" if amount < 1 
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
class Bank_account

  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount) 
    raise "Please enter a valid amount." if amount < 1 
    @balance += amount
    @transaction_history.push([Time.now.strftime("%d-%m-%Y"), amount, " ", @balance])
  end

  def withdraw(amount)
    raise "This withdrawal exceeds your balance. Please enter a valid amount." if amount > @balance
    @balance -= amount
    @transaction_history.push([Time.now.strftime("%d-%m-%Y"), " ", amount, @balance])
  end
end
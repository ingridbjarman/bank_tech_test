class Transaction_record

  attr_reader :date, :amount_deposited, :amount_withdrawn, :balance
  def initialize(date, amount_deposited, amount_withdrawn, balance)
    @date = date
    @amount_deposited = amount_deposited
    @amount_withdrawn = amount_withdrawn
    @balance = balance
  end

end
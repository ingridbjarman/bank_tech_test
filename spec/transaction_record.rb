class Transaction_record

  attr_reader :date, :amount_deposited
  def initialize(date, amount_deposited)
    @date = date
    @amount_deposited = amount_deposited
  end

end
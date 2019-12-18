class Transaction_record

  attr_reader :date, :amount_deposited, :amount_withdrawn
  def initialize(date, amount_deposited, amount_withdrawn)
    @date = date
    @amount_deposited = amount_deposited
    @amount_withdrawn = amount_withdrawn
  end

end
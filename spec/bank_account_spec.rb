require 'bank_account'

describe 'bank account' do
  this = Bank_account.new
  it 'initialises with a balance of zero' do
    expect(this.balance).to eq 0
  end
end
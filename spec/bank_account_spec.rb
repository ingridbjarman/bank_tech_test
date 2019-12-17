require 'bank_account'

describe 'bank account' do
  subject = Bank_account.new
  it 'initialises with a balance of zero' do
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    it 'takes an amount as an argument, and increases the balance by that amount' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end

    it 'raises an error if the account holder tries to deposit a negative amount' do
      message = 'Please enter a valid amount'
      expect { subject.deposit(-100) }.to raise_error message    end
  end
end

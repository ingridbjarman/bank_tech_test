require 'bank_account'

describe 'bank account' do
  it 'initialises with a balance of zero' do
    subject = Bank_account.new
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    subject = Bank_account.new
    it 'takes an amount as an argument, and increases the balance by that amount' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end

    it 'raises an error if the account holder tries to deposit a negative amount' do
      message = 'Please enter a valid amount'
      expect { subject.deposit(-100) }.to raise_error message    
    end
  end

  describe '#withdraw' do
    subject = Bank_account.new
    it 'takes an amount as an argument, and decreases the balance by that amount' do
      subject.deposit(100)
      subject.withdraw(100)
      expect(subject.balance).to eq 0
    end
  end
end

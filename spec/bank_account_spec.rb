require 'bank_account'

describe 'bank account' do
  it 'initialises with a balance of zero' do
    subject = Bank_account.new
    expect(subject.balance).to eq 0
  end

  it 'initialises with an empty array of transactions' do
    subject = Bank_account.new
    expect(subject.transaction_history).to eq []
  end

  describe '#deposit' do
    subject = Bank_account.new
    it 'takes an amount as an argument, and increases the balance by that amount' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end

    it 'raises an error if the account holder tries to deposit a negative amount' do
      expect { subject.deposit(-100) }.to raise_error 'Please enter a valid amount.'    
    end
  end

  describe '#withdraw' do
    subject = Bank_account.new
    it 'takes an amount as an argument, and decreases the balance by that amount' do
      subject.deposit(100)
      subject.withdraw(100)
      expect(subject.balance).to eq 0
    end

    it 'raises an error if the amount to be withdrawn will exceed the account balance' do
      subject.deposit(50)
      expect { subject.withdraw(100) }.to raise_error "This withdrawal exceeds your balance. Please enter a valid amount."
    end
  end
end

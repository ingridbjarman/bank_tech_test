require 'transaction_record'

describe 'transaction_record' do
  subject = Transaction_record.new(Time.now.strftime("%d-%m-%Y"), 100, "/", 100)
  it 'initialises with a date property' do
    expect(subject.date).to eq "18-12-2019"
  end

  it 'initialises with an amount deposited property' do
    expect(subject.amount_deposited).to eq 100
  end

  it 'initialises with an amount withdrawn property' do
    expect(subject.amount_withdrawn).to eq "/"
  end

  it 'initialises with a balance property' do
    expect(subject.balance).to eq 100
  end
end
require 'transaction_record'

describe 'transaction_record' do
  subject = Transaction_record.new(Time.now.strftime("%d-%m-%Y"))
  it 'initialises with a date property' do
    expect(subject.date).to eq "18-12-2019"
  end
end
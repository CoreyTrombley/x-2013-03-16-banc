require 'spec_helper'

describe Bank do

  describe '.create' do
    it 'saves a bank to the database' do
      Bank.create(name: 'BoA')
      bank = Bank.first
      expect(bank.name).to eq 'BoA'
    end
  end

end
# require yahoofinance

class Broker
  attr_accessor :name

  def initialize(name)
    @name = name
    @stockaccounts = []
    @portfolios
  end

  def open_stockaccount(client_name, balance)
    stockaccount = {}
    stockaccount[:name] = client_name
    stockaccount[:balance] = balance
    @stockaccounts = []
    @stockaccounts << stockaccount
    return stockaccount
  end

	def deposit(account_name, amount)
    @stockaccounts.each do |stockaccount|
      if stockaccount[:name] == account_name
        stockaccount[:balance] += amount
      end
    end
  end


end


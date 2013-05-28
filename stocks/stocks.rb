require 'yahoofinance'

class Stockaccount
  attr_accessor :name

  def initialize(name)
    @name = name
    @accounts = []
  end

  def open_account(client_name, balance)
    account = {}
    account[:name] = client_name
    account[:balance] = @balance
    @accounts = []
    @accounts << account
    return account
  end

  def deposit(account_name, amount)
    @accounts.each do |account|
      if account[:name] == account_name
        account[:balance] += amount
      end
    end
  end

  def open_portfolio(client_name, balance)
    portfolio = {}
    portfolio[:client_name] = client_name += " 1"
    portfolio[:balance] = balance
    @portfolios = []
    @portfolios << portfolio
    return portfolio
  end


  def list_clients
    accounts.each { |a| p a.client_name }
  end
end

class Portfolio
  attr_accessor :stock

  def initialize(name)
    @name = name
    @stocks = {}
  end

  
  def buy_stock(ticker, sharesamount)
    price = (YahooFinance::get_quotes(YahooFinance::StandardQuote, '#{ticker}')['#{ticker}'].lastTrade)
    cost = sharesamount * @price
    puts "Do you have #{cost} dollars to pay for these shares?"
    answ = gets.chomp.downcase.to_s
    if $balance < cost
      puts "You do not have adequate funds for this purchase."
    end
    if answ == "yes" && !($balance < cost)
      @balance -= cost
      # portfolio << {ticker=> @price}
      stocks[ticker] = price
    elsif answ == "no"
      puts "You can't afford these equities."
    else
      puts "Please answer yes or no."
    end
  end

  def sell_stock(ticker, sharesamount)
    puts "Enter the ticker name of the stock you would like to sell."
    cost = sharesamount * @price
    ticker = gets.chomp.to_s.downcase
    puts "how many shares would you like to sell?"
    answ = gets.chomp.downcase.to_i
    if ticker != nil && answ != nil
      @proceeds = cost * answ
      $balance += @proceeds
      sharesamount -= answ
    else
      puts "Please sell your stock responsibly."
    end
  end

  def port_list(portfolio)
    puts portfolio.keys.inspect
  
  end

  def list_stock(portfolio)
    puts { |a| p a.values.inspect }
  end

  puts "would you like to open_account, deposit, list_clients, open_portfolio, buy_stock, sell_stock, port_list, or list_stock?"
end
  # YahooFinance::get_quotes(YahooFinance::StandardQuote, '#{ticker}')['#{ticker}'].lastTrade

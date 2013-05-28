require_relative "stocks2"

describe Broker do
  describe '#create account' do
    it 'builds a new broker with a name' do
      broker=Broker.new("CETrade")
      broker.should be_instance_of Broker
      broker.name.should == "CETrade"
    end
  end

  describe '#open_stockaccount' do
    it 'opens a new account' do
      broker = Broker.new("CETrade")
      stockaccount = broker.open_stockaccount('TomJones', 500000)
      stockaccount[:name].should == 'TomJones'
    end
  end

  it 'has an initial balance' do
    broker = Broker.new('CETrade')
    stockaccount = broker.open_stockaccount('TomJones', 500000)
    stockaccount[:balance].should == 500000
  end


  it 'opens two accounts' do
    broker = Broker.new('CETrade')
    stockaccount1 = broker.open_stockaccount('TomJones', 500000)
    stockaccount2 = broker.open_stockaccount('omar', 500)
    stockaccount1[:balance].should == 500000
    stockaccount2[:balance].should == 500
  end

  describe '#deposit' do
    it 'adds to account' do
      broker=Broker.new('CETrade')
      TomJones_account = broker.open_stockaccount('TomJones', 500000)
      broker.deposit('TomJones', 20)
      TomJones_account[:balance].should == 500020
    end
  end


  describe '#open portfolio' do
    it 'opens a new portfolio in account' do
      broker = Broker.new("CETrade")
      stockaccount =


        end



    # broker = Broker.new('CETrade')
    # account = Portfolio.new('xxx', broker)

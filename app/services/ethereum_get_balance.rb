class EthereumGetBalance
  class << self
    def ether(address)
      client = EthereumClient.new(Settings.path)
      client.get_balance(address)
    end

    def token(token, address)
      client = EthereumClient.new(Settings.path)
      contract = client.set_contract(token.name.to_s, token.address.to_s, token.abi.to_s)
      contract.call.balance_of(address.to_s)
    end
  end
end
class EthereumClient < Ethereum::IpcClient

  WEI_IN_ETHER = 10**18

  def initialize(path)
    super(path)
  end

  def get_balance(address)
  	super(address).to_f / WEI_IN_ETHER
  end

  def set_contract(name, address, abi)
    Ethereum::Contract.create(name: name, address: address, abi: abi, client: self)
  end
end
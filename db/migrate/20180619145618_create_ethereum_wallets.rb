class CreateEthereumWallets < ActiveRecord::Migration[5.0]
  def change
    create_table :ethereum_wallets do |t|
      t.string :address
      t.string :gaid 

      t.timestamps
    end
  end
end

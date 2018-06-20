class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|

      t.string :name
      t.string :address
      t.text :abi

      t.timestamps
    end
  end
end

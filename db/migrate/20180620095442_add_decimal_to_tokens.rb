class AddDecimalToTokens < ActiveRecord::Migration[5.0]
  def change
  	add_column :tokens, :decimal, :integer
  end
end

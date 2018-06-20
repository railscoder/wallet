class Api::V1::WalletsController < ApplicationController
  respond_to :json

  def show
  	balances = []
    Token.all.each do |t|
    	balance = EthereumGetBalance.token(t, params[:address]).to_f / 10**t.decimal
    	balances.push({id: t.id, name: t.name, balance: balance})
    end
    render json: balances
  end
end
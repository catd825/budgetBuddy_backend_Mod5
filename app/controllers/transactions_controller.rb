class TransactionsController < ApplicationController

    def index
        transactions = Transaction.all
        transactions.sort_by{ |transaction| transaction.date}.reverse!
        render json: transactions.to_json
    end


end

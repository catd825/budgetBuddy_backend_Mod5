class TransactionsController < ApplicationController
    before_action :find_trans, only: [:update]


    def index
        transactions = Transaction.all
        transactions.sort_by{ |transaction| transaction.id}.reverse!
        render json: transactions.to_json
    end

    def update
        @transaction.update(trans_params)
        if @transaction.valid?
            render json: @transaction.to_json
        else
            render json: { error: 'failed to edit ' }, status: :not_acceptable
        end
    end

    private 

    def trans_params
        params.require(:transaction).permit(:category_id, :bank_account_id, :amount, :category_name, :date, :trans_type, :description, :month) 
    end

    def find_trans
        @transaction = Transaction.find(params[:id])

    end


end


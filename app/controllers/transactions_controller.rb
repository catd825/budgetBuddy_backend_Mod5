class TransactionsController < ApplicationController
    before_action :find_trans, only: [:update, :destroy]


    def index
        transactions = Transaction.all
        transactions.sort_by{ |transaction| transaction.id}.reverse!
        render json: transactions.to_json
    end

    def new
        transaction = Transaction.new
    end

    def create
        transaction = Transaction.create(trans_params)
        render json: transaction.to_json
    end

    def update
        @transaction.update(trans_params)
        if @transaction.valid?
            render json: @transaction.to_json
        else
            render json: { error: 'failed to edit ' }, status: :not_acceptable
        end
    end

    def destroy
        @transaction.destroy
        render json: @transaction.to_json
    end



    private 

    def trans_params
        params.require(:transaction).permit(:user_id, :category_id, :bank_account_id, :amount, :category_name, :date, :trans_type, :description, :month) 
    end


    def find_trans
        @transaction = Transaction.find(params[:id])
    end


end


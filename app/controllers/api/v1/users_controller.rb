class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]


    def index
        render json: User.all.to_json
      end
  
      def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      end
   
      def create
          @user = User.create(user_params)
          if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
          else
          render json: @user.errors.full_messages, status: :not_acceptable
          end
      end
      
      def retrieve_transactions
        transactions = @user.transactions
        transactions = transactions.sort_by{ |transaction| [transaction.created_at, transaction.updated_at].max }.reverse!
        render json: transactions.to_json
      end


      def retrieve_bank_accounts
        bank_accounts = @user.bank_accounts
        bank_accounts = bank_accounts.sort_by{ |bank_account| [bank_account.created_at, bank_account.updated_at].max }.reverse!
        render json: bank_accounts.to_json
      end

      def retrieve_categories
        categories = @user.categories
        categories = categories.sort_by{ |category| [category.created_at, category.updated_at].max }.reverse!
        render json: categories.to_json
      end

      def retrieve_user_categories  
        user_categories = @user.user_categories
        user_categories = user_categories.sort_by{ |user_category| [user_category.created_at, user_category.updated_at].max }.reverse!
        render json: user_categories.to_json
      end

      private
      def user_params
        params.require(:user).permit(:username, :password, :name)
      end


end

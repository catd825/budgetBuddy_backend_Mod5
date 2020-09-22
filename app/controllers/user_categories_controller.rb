class UserCategoriesController < ApplicationController
    before_action :find_budget, only: [:update, :destroy]


    def index
        user_categories = UserCategory.all
        render json: user_categories.to_json
    end

    def new
        user_category = UserCategory.new
    end

    def create
        user_category = UserCategory.create(budget_params)
        render json: user_category.to_json
    end

    def update
        @user_category.update(budget_params)
        if @user_category.valid?
            render json: @user_category.to_json
        else
            render json: { error: 'failed to edit comment' }, status: :not_acceptable
        end
    end

    def destroy
        @user_category.destroy
        render json: @user_category.to_json
    end


    private

    def budget_params
        params.require(:user_category).permit(:category_id, :user_id, :amount, :date, :category_name, :user_name, :trans_type) 
    end

    def find_budget
        @user_category = UserCategory.find(params[:id])

    end


end

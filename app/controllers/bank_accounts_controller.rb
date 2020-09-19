class BankAccountsController < ApplicationController

    def index
        bank_accounts = BankAccount.all
        render json: bank_accounts.to_json
    end

end

class AccountsController < ApplicationController
  # index
  def index
    @accounts = Account.all
  end

  # new
  def new
    @app = App.find(params[:app_id])
    @account = @app.accounts.new
  end

  # create
  def create
    @app = App.find(params[:app_id])
    @account = @app.accounts.create(account_params)

    redirect_to @account
  end

  #show
  def show
    @account = Account.find(params[:id])
    @accounts = Account.all
  end

  # edit
  def edit
    @account = Account.find(params[:id])
  end

  # update
  def update
    @account = Account.find(params[:id])
    @account.update(account_params)

    redirect_to @account
  end

  # destroy
  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to accounts_path
  end

  private
  def account_params
    params.require(:account).permit(:username, :password, :app_id)
  end
end

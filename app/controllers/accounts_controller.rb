class AccountsController < ApplicationController
  def new
    @app = App.find(params[:app_id])
    @account = current_user.accounts.new
  end
  def show
    @accounts = current_user.accounts.all
    @account = Account.find(params[:id])
    @app = App.find(params[:app_id])
    if current_user.id == @app.user_id
    else
      redirect_to root_path
    end
  end
  def create
    @app = App.find(params[:app_id])
    @account = @app.accounts.create(account_params.merge(user: current_user))
    redirect_to app_path(@app)
  end
  def edit
    @app = App.find(params[:app_id])
    @account = Account.find(params[:id])
    if current_user.id == @app.user_id
    else
      redirect_to root_path
    end
  end
  def update
    @app = App.find(params[:app_id])
    @account = Account.find(params[:id])
    @account.update(account_params.merge(user:current_user))
    redirect_to app_account_path(@app)
  end
  def destroy
    @app = App.find(params[:app_id])
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to app_path(@app)
  end
  private
  def account_params
    params.require(:account).permit(:username, :email, :password)
  end
end